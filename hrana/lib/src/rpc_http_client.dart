import 'dart:async';
import 'dart:developer';

import 'package:hrana/src/exception.dart';
import 'package:hrana/src/protocol.pb.dart' as proto;
import 'package:hrana/src/rpc_client.dart';
import 'package:http/http.dart' as http;

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

  var _nextStreamId = 0;
  var _nextSqlTextId = 0;
  final Map<SqlStreamId, _SqlStreamInfo> _streams = {};

  static void _log(String message) {
    log(
      message,
      name: 'Hrana',
      level: 300, // Level.FINEST
    );
  }

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
    if (response.statusCode >= 300) {
      throw ServerException(
        message: 'Server does not support Hrana V3 Protobuf protocol: '
            '"${response.body}"',
        code: response.statusCode.toString(),
      );
    }
  }

  Future<proto.StreamResponse> _runPipeline({
    SqlStreamId? streamId,
    required proto.StreamRequest? request,
  }) async {
    final streamInfo = _streams[streamId];
    final baseUri = streamInfo?.baseUri ?? _uri;
    final url = baseUri.resolve('./v3-protobuf/pipeline');
    final pipelineReq = proto.PipelineReq(
      baton: streamInfo?.baton,
      requests: request == null ? const [] : [request],
    );
    _log('Sending request:\n$request');
    final piplineResp = await _httpClient.post(
      url,
      headers: {
        'Content-Type': 'application/protobuf',
        'Accept': 'application/protobuf',
      },
      body: pipelineReq.writeToBuffer(),
    );
    if (piplineResp.statusCode >= 300) {
      throw ServerException(
        message: 'Failed to run pipeline: "${piplineResp.body}"',
        code: piplineResp.statusCode.toString(),
      );
    }
    final response = proto.PipelineResp.fromBuffer(piplineResp.bodyBytes);
    final expectsBaton = request == null || !request.hasClose();
    if (!response.hasBaton() && expectsBaton) {
      // The server has closed the stream.
      _streams.remove(streamId);
      throw const ConnectionClosed();
    }
    if (streamId != null) {
      _streams[streamId] = (
        baton: response.baton,
        baseUri: switch (response.baseUrl) {
          '' => null,
          final url => Uri.parse(url),
        },
      );
    }
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
  Future<SqlStreamId> openStream() async {
    if (_isClosed) {
      throw const ConnectionClosed();
    }
    final streamId = SqlStreamId(_nextStreamId++);
    await _runPipeline(
      streamId: streamId,
      request: null,
    );
    return streamId;
  }

  @override
  Future<void> closeStream(SqlStreamId id) async {
    if (_isClosed) {
      throw const ConnectionClosed();
    }
    try {
      final response = await _runPipeline(
        streamId: id,
        request: proto.StreamRequest(close: proto.CloseStreamReq()),
      );
      assert(response.whichResponse() == proto.StreamResponse_Response.close);
    } finally {
      _streams.remove(id);
    }
  }

  @override
  Future<StatementResult> executeStatement(
    SqlStreamId stream,
    StatementDescription stmt,
  ) async {
    if (_isClosed) {
      throw const ConnectionClosed();
    }
    final response = await _runPipeline(
      streamId: stream,
      request: proto.StreamRequest(
        execute: proto.ExecuteStreamReq(stmt: stmt.toStatement()),
      ),
    );
    assert(response.whichResponse() == proto.StreamResponse_Response.execute);
    return StatementResult.fromProto(response.execute.result);
  }

  @override
  Future<proto.BatchResult> runBatch(
    SqlStreamId stream,
    proto.Batch batch,
  ) async {
    if (_isClosed) {
      throw const ConnectionClosed();
    }
    final response = await _runPipeline(
      streamId: stream,
      request: proto.StreamRequest(batch: proto.BatchStreamReq(batch: batch)),
    );
    assert(response.whichResponse() == proto.StreamResponse_Response.batch);
    return response.batch.result;
  }

  @override
  Future<SqlTextId> storeSql(SqlStreamId stream, String sql) async {
    if (_isClosed) {
      throw const ConnectionClosed();
    }
    final textId = SqlTextId(_nextSqlTextId++);
    final response = await _runPipeline(
      streamId: stream,
      request: proto.StreamRequest(
        storeSql: proto.StoreSqlReq(sql: sql, sqlId: textId.id),
      ),
    );
    assert(response.whichResponse() == proto.StreamResponse_Response.storeSql);
    return textId;
  }

  @override
  Future<void> closeSql(SqlStreamId stream, SqlTextId id) async {
    if (_isClosed) {
      throw const ConnectionClosed();
    }
    final response = await _runPipeline(
      streamId: stream,
      request: proto.StreamRequest(
        closeSql: proto.CloseSqlReq(sqlId: id.id),
      ),
    );
    assert(response.whichResponse() == proto.StreamResponse_Response.closeSql);
  }

  var _isClosed = false;

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
    _streams.clear();
    _httpClient.close();
    _closed.complete();
  }
}

typedef _SqlStreamInfo = ({
  String baton,
  Uri? baseUri,
});

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
