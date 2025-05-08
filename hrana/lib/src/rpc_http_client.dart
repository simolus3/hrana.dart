import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:pool/pool.dart';

import 'exception.dart';
import 'protocol.json.dart' as json;
import 'rpc_client.dart';

void _log(String message) {
  log(
    message,
    name: 'Hrana',
    level: 300, // Level.FINEST
  );
}

void _logError(String message, [Object? error, StackTrace? stackTrace]) {
  log(
    message,
    name: 'Hrana',
    level: 1000, // Level.SEVERE
    error: error,
    stackTrace: stackTrace,
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

  final _concurrentStreams = Pool(maxConcurrentStreams);

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

  /// Ensures that the server supports the Hrana V3 protocol.
  Future<void> _ensureProtocolSupport() async {
    final url = _uri.resolve('./v3');
    final response = await _httpClient.get(url);
    if (response.statusCode case < 200 || >= 300) {
      throw ServerException(
        message: 'Server does not support Hrana V3 protocol: '
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
    final streamLock = await _concurrentStreams.request();
    final stream = _HranaHttpStream(this, streamLock);
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
  final PoolResource _streamLock;

  static final _codec = const JsonCodec().fuse(utf8);

  // Requests in a hrana stream must be sequential, which this lock ensures.
  final Pool _lock = Pool(1);
  Uri? _baseUri;

  /// Null if this stream has just been created and has not been used in a
  /// request yet.
  String? _baton;

  final Completer<void> _closed = Completer();
  bool _isClosed = false;

  _HranaHttpStream(this._client, this._streamLock);

  void _markClosed() {
    if (!_isClosed) {
      _isClosed = true;
      _closed.complete();
      _client._streams.remove(this);
      _streamLock.release();
    }
  }

  Future<json.StreamResponse> _sendStreamRequest(
    json.StreamRequest? request,
  ) async {
    return await _lock.withResource(() async {
      if (_isClosed) {
        throw const ConnectionClosed();
      }

      return await _sendStreamRequestWithLock(request);
    });
  }

  Future<json.StreamResponse> _sendStreamRequestWithLock(
    json.StreamRequest? request,
  ) async {
    final baseUri = _baseUri ?? _client._uri;
    final url = baseUri.resolve('./v3/pipeline');
    final pipelineReq = json.PipelineReq(
      baton: _baton,
      requests: request == null ? const [] : [request],
    );
    _log('Sending request:\n$request');
    final pipelineResp = await _client._httpClient.post(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      body: _codec.encode(pipelineReq.toJson()),
    );
    if (pipelineResp.statusCode case < 200 || >= 300) {
      try {
        final decoded =
            _codec.decode(pipelineResp.bodyBytes) as Map<String, Object?>;

        if (decoded case {'error': final String desc}) {
          throw ServerException(message: desc, code: null);
        }

        final jsonResponse = json.StreamError.fromJson(decoded);
        throw ServerException.fromJson(jsonResponse);
      } on FormatException {
        throw ServerException(
          message: pipelineResp.body,
          code: pipelineResp.statusCode.toString(),
        );
      }
    }
    final response = json.PipelineResp.fromJson(
      _codec.decode(pipelineResp.bodyBytes) as Map<String, Object?>,
    );

    _baton = response.baton;
    _baseUri = switch (response.baseUrl) {
      null => null,
      final url => Uri.parse(url),
    };

    if (response.results.isEmpty && request == null) {
      _log('Opened stream');
      return const json.StreamResponse.opened();
    }
    final result = response.results.single;
    _log('Received response:\n$result');
    return switch (result) {
      json.StreamResultOk(:final response) => response,
      json.StreamResultError(:final error) =>
        throw ServerException.fromJson(error),
    };
  }

  @override
  Future<bool> checkOpen() async {
    // We can send an empty request to "ping" this stream
    try {
      await _sendStreamRequest(null);
      return true;
    } on ServerException catch (e, st) {
      _logError('Error in stream', e, st);
      _markClosed();
      return false;
    } on ConnectionClosed {
      return false;
    }
  }

  @override
  Future<void> closeSql(SqlTextId id) async {
    final response = await _sendStreamRequest(
      json.StreamRequest.closeSql(sqlId: id.id),
    );
    assert(response is json.CloseSqlStreamResp);
  }

  @override
  Future<void> closeStream() async {
    try {
      final response = await _sendStreamRequest(
        const json.StreamRequest.close(),
      );
      assert(response is json.CloseStreamStreamResp);
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
    final response = await _sendStreamRequest(
      json.StreamRequest.execute(stmt: stmt.toStatement()),
    );
    assert(response is json.ExecuteStreamResp);
    return StatementResult.fromJson(
      (response as json.ExecuteStreamResp).result,
    );
  }

  @override
  Future<json.BatchResult> runBatch(json.Batch batch) async {
    final response = await _sendStreamRequest(
      json.StreamRequest.batch(batch: batch),
    );
    assert(response is json.BatchStreamResp);
    return (response as json.BatchStreamResp).result;
  }

  @override
  Future<SqlTextId> storeSql(String sql) async {
    final textId = SqlTextId(_client._nextSqlTextId++);
    final response = await _sendStreamRequest(
      json.StreamRequest.storeSql(sql: sql, sqlId: textId.id),
    );
    assert(response is json.StoreSqlStreamResp);
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
