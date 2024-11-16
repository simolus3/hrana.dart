import 'dart:async';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:pool/pool.dart';

import 'exception.dart';
import 'protocol.pb.dart' as proto;
import 'rpc_client.dart';

void _log(String message) {
  log(
    message,
    name: 'Hrana',
    level: 300, // Level.FINEST
  );
}

final class HranaHttpClient implements HranaClient {
  HranaHttpClient._(
    this._uri, {
    String? jwtToken,
    http.Client? httpClient,
  }) : _httpClient = _AuthorizingHttpClient(
          inner: httpClient,
          jwtToken: jwtToken,
        );

  final Uri _uri;
  final http.Client _httpClient;

  final Completer<void> _closed = Completer();
  var _isClosed = false;

  var _nextSqlTextId = 0;
  final List<_HranaHttpStream> _streams = [];

  static Future<HranaHttpClient> connect(
    Uri uri, {
    String? jwtToken,
    http.Client? httpClient,
  }) async {
    final client = HranaHttpClient._(
      uri,
      jwtToken: jwtToken,
      httpClient: httpClient,
    );
    await client._ensureProtocolSupport();
    return client;
  }

  /// Ensures that the server supports the Hrana V3 Protobuf protocol.
  Future<void> _ensureProtocolSupport() async {
    final url = _uri.resolve('./v3-protobuf');
    final response = await _httpClient.get(url);
    if (response.statusCode case < 200 || >= 300) {
      throw ServerException(
        message: 'Server does not support Hrana V3 Protobuf protocol: '
            '"${response.body}"',
        code: response.statusCode.toString(),
      );
    }
  }

  @override
  Future<HranaStream> openStream() async {
    if (_isClosed) {
      throw const ConnectionClosed();
    }
    final stream = _HranaHttpStream(this);
    _streams.add(stream);

    await stream.checkOpen();
    return stream;
  }

  @override
  bool get isClosed => _isClosed;

  @override
  Future<void> get closed => _closed.future;

  @override
  Future<void> close() async {
    if (_isClosed) {
      return;
    }
    _isClosed = true;
    try {
      await Future.wait(_streams.toList().map((s) => s.closeStream()));
    } finally {
      _streams.clear();
      _httpClient.close();
      _closed.complete();
    }
  }
}

final class _HranaHttpStream implements HranaStream {
  final HranaHttpClient _client;

  // Requests in a hrana stream must be sequential, which this lock ensures.
  final Pool _lock = Pool(1);
  Uri? _baseUri;

  /// Null if this stream has just been created and has not been used in a
  /// request yet.
  String? _baton;

  final Completer<void> _closed = Completer();
  bool _isClosed = false;

  _HranaHttpStream(this._client);

  void _markClosed() {
    if (!_isClosed) {
      _isClosed = true;
      _closed.complete();
      _client._streams.remove(this);
    }
  }

  Future<proto.StreamResponse> _sendStreamRequest(
    proto.StreamRequest? request,
  ) async {
    return await _lock.withResource(() async {
      if (_isClosed) {
        throw const ConnectionClosed();
      }

      return await _sendStreamRequestWithLock(request);
    });
  }

  Future<proto.StreamResponse> _sendStreamRequestWithLock(
    proto.StreamRequest? request,
  ) async {
    final baseUri = _baseUri ?? _client._uri;
    final url = baseUri.resolve('./v3-protobuf/pipeline');
    final pipelineReq = proto.PipelineReq(
      baton: _baton,
      requests: request == null ? const [] : [request],
    );
    _log('Sending request:\n$request');
    final piplineResp = await _client._httpClient.post(
      url,
      headers: {
        'Content-Type': 'application/protobuf',
        'Accept': 'application/protobuf',
      },
      body: pipelineReq.writeToBuffer(),
    );
    if (piplineResp.statusCode case < 200 || >= 300) {
      throw ServerException(
        message: 'Failed to run pipeline: "${piplineResp.body}"',
        code: piplineResp.statusCode.toString(),
      );
    }
    final response = proto.PipelineResp.fromBuffer(piplineResp.bodyBytes);
    final expectsBaton = request == null || !request.hasClose();
    if (!response.hasBaton() && expectsBaton) {
      // The server has closed the stream.
      _markClosed();
      throw const ConnectionClosed();
    }

    _baton = response.baton;
    _baseUri = switch (response.baseUrl) {
      '' => null,
      final url => Uri.parse(url),
    };

    if (response.results.isEmpty && request == null) {
      _log('Opened stream');
      return proto.StreamResponse();
    }
    final result = response.results.single;
    _log('Received response:\n$result');
    return switch (result.whichResult()) {
      proto.StreamResult_Result.ok => result.ok,
      proto.StreamResult_Result.error => throw ServerException(
          message: result.error.message,
          code: result.error.code,
        ),
      _ => throw ServerException(
          message: 'Unexpected response: $response',
          code: null,
        ),
    };
  }

  @override
  Future<bool> checkOpen() async {
    // We can send an empty request to "ping" this stream
    try {
      await _sendStreamRequest(null);
      return true;
    } on ServerException {
      _markClosed();
      return false;
    } on ConnectionClosed {
      return false;
    }
  }

  @override
  Future<void> closeSql(SqlTextId id) async {
    final response = await _sendStreamRequest(proto.StreamRequest(
      closeSql: proto.CloseSqlReq(sqlId: id.id),
    ));
    assert(response.whichResponse() == proto.StreamResponse_Response.closeSql);
  }

  @override
  Future<void> closeStream() async {
    try {
      final response = await _sendStreamRequest(
        proto.StreamRequest(close: proto.CloseStreamReq()),
      );
      assert(response.whichResponse() == proto.StreamResponse_Response.close);
    } on ConnectionClosed {
      // Fine, these streams time out implicitly too.
    } on ServerException {
      // Fine, these streams time out implicitly too.
    } finally {
      _markClosed();
    }
  }

  @override
  Future<void> get closed => _closed.future;

  @override
  Future<StatementResult> executeStatement(StatementDescription stmt) async {
    final response = await _sendStreamRequest(proto.StreamRequest(
      execute: proto.ExecuteStreamReq(stmt: stmt.toStatement()),
    ));
    assert(response.whichResponse() == proto.StreamResponse_Response.execute);
    return StatementResult.fromProto(response.execute.result);
  }

  @override
  Future<proto.BatchResult> runBatch(proto.Batch batch) async {
    final response = await _sendStreamRequest(
      proto.StreamRequest(batch: proto.BatchStreamReq(batch: batch)),
    );
    assert(response.whichResponse() == proto.StreamResponse_Response.batch);
    return response.batch.result;
  }

  @override
  Future<SqlTextId> storeSql(String sql) async {
    final textId = SqlTextId(_client._nextSqlTextId++);
    final response = await _sendStreamRequest(proto.StreamRequest(
      storeSql: proto.StoreSqlReq(sql: sql, sqlId: textId.id),
    ));
    assert(response.whichResponse() == proto.StreamResponse_Response.storeSql);
    return textId;
  }
}

final class _AuthorizingHttpClient extends http.BaseClient {
  _AuthorizingHttpClient({
    http.Client? inner,
    String? jwtToken,
  })  : _ownsInner = inner == null,
        _inner = inner ?? http.Client(),
        _jwtToken = jwtToken;

  final bool _ownsInner;
  final http.Client _inner;
  final String? _jwtToken;

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    if (_jwtToken != null) {
      request.headers['Authorization'] = 'Bearer $_jwtToken';
    }
    return _inner.send(request);
  }

  @override
  void close() {
    if (_ownsInner) {
      _inner.close();
    }
  }
}
