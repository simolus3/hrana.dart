import 'dart:async';
import 'dart:convert';

import 'package:pool/pool.dart';
import 'package:web_socket/web_socket.dart';

import 'exception.dart';
import 'protocol.json.dart' as json;
import 'rpc_client.dart';

enum _State { open, pendingClose, closed }

final class HranaWebsocketClient implements HranaClient {
  final WebSocket _socket;
  _State _state = _State.open;
  final Completer<void> _streamClosed = Completer();

  Completer<void>? _helloCompleter;
  final Map<int, Completer<json.ResponseOkMsg>> _pendingRequests = {};
  int _nextRequestId = 0;
  int _nextStreamId = 0;
  int _nextSqlTextId = 0;

  /// The maximum number of concurrent streams that can be opened.
  ///
  /// This limit is set by the LibSQL server and is not configurable.
  static const int _maxConcurrentStreams = 128;
  final _concurrentStreams = Pool(_maxConcurrentStreams);

  final List<HranaWebsocketStream> _streams = [];

  HranaWebsocketClient._(this._socket) {
    _socket.events.listen((data) {
      switch (data) {
        case TextDataReceived(:final text):
          _handleMessage(text);
        case BinaryDataReceived(:final data):
          _handleMessage(utf8.decode(data));
        case CloseReceived():
          _closedByRemote();
      }
    }, onDone: _closedByRemote);
  }

  @override
  bool get isClosed => _state == _State.closed;

  @override
  Future<void> get closed => _streamClosed.future;

  void _closedByRemote() {
    if (_state == _State.closed) {
      return;
    }
    _state = _State.closed;
    for (final pending in _pendingRequests.values) {
      pending.completeError(const ConnectionClosed());
    }
    for (final stream in _streams.toList()) {
      stream.markClosed();
    }
    _streams.clear();
    _streamClosed.complete();
  }

  @override
  Future<void> close() async {
    switch (_state) {
      case _State.closed:
        return;
      case _State.pendingClose:
        return _streamClosed.future;
      case _State.open:
        _state = _State.pendingClose;
        await _socket.close(1000, 'connection closed');
        return _streamClosed.future;
    }
  }

  @override
  Future<HranaStream> openStream() async {
    final streamLock = await _concurrentStreams.request();
    final id = await openStreamId();
    final stream = HranaWebsocketStream(this, id, streamLock);
    _streams.add(stream);

    return stream;
  }

  Future<SqlStreamId> openStreamId() async {
    final streamId = _nextStreamId++;
    await request(
      json.Request.openStream(streamId: streamId),
    );
    return SqlStreamId._(streamId);
  }

  Future<void> closeStream(SqlStreamId id) async {
    await request(
      json.Request.closeStream(streamId: id),
    );
  }

  Future<SqlTextId> storeSql(String sql) async {
    final textId = _nextSqlTextId++;
    await request(
      json.Request.storeSql(sqlId: textId, sql: sql),
    );
    return SqlTextId(textId);
  }

  Future<void> closeSql(SqlTextId id) async {
    await request(json.Request.closeSql(sqlId: id.id));
  }

  Future<void> _hello(String? jwt) async {
    final completer = _helloCompleter = Completer();
    _send(json.ClientMsg.hello(jwt: jwt));
    await completer.future;
    _helloCompleter = null;
  }

  Future<json.ResponseOkMsg> request(json.Request request) async {
    final id = _nextRequestId++;
    final completer = Completer<json.ResponseOkMsg>();
    _pendingRequests[id] = completer;
    _send(
      json.ClientMsg.request(requestId: id, request: request),
    );

    return await completer.future;
  }

  void _send(json.ClientMsg msg) {
    if (_state != _State.open) {
      throw const ConnectionClosed();
    }

    _socket.sendText(jsonEncode(msg.toJson()));
  }

  void _handleMessage(String data) {
    final msg = json.ServerMsg.fromJson(
      jsonDecode(data) as Map<String, Object?>,
    );
    switch (msg) {
      case json.HelloOkMsg():
        _helloCompleter?.complete();
      case json.HelloErrorMsg(:final error):
        _helloCompleter?.completeError(
          ServerException.fromJson(error),
        );
      case json.ResponseOkMsg(:final requestId):
        final completer = _pendingRequests.remove(requestId);
        completer?.complete(msg);
      case json.ResponseErrorMsg(:final requestId, :final error):
        final completer = _pendingRequests.remove(requestId);
        completer?.completeError(
          ServerException.fromJson(error),
        );
    }
  }

  static Future<HranaWebsocketClient> connect(
    Uri uri, {
    String? jwtToken,
  }) async {
    final channel = await WebSocket.connect(
      uri,
      protocols: ['hrana3'],
    );

    final client = HranaWebsocketClient._(channel);
    await client._hello(jwtToken);
    return client;
  }
}

final class HranaWebsocketStream implements HranaStream {
  final HranaWebsocketClient _client;
  final SqlStreamId _id;
  final PoolResource _streamLock;

  bool _isClosed = false;
  final Completer<void> _closed = Completer();

  HranaWebsocketStream(this._client, this._id, this._streamLock);

  void _ensureOpen() {
    if (_isClosed) {
      throw ConnectionClosed();
    }
  }

  @override
  Future<bool> checkOpen() async {
    // Web socket streams don't expire without the connection going down.
    return true;
  }

  @override
  Future<void> closeSql(SqlTextId id) async {
    _ensureOpen();
    await _client.closeSql(id);
  }

  @override
  Future<void> closeStream() async {
    try {
      if (!_isClosed) {
        await _client.closeStream(_id);
      }
    } finally {
      markClosed();
    }
  }

  @override
  Future<void> get closed => _closed.future;

  @override
  Future<StatementResult> executeStatement(StatementDescription stmt) async {
    _ensureOpen();
    final response = await _client.request(json.Request.execute(
      streamId: _id,
      stmt: stmt.toStatement(),
    ));

    final result = (response.response as json.ExecuteResp).result;
    return StatementResult.fromJson(result);
  }

  @override
  Future<json.BatchResult> runBatch(json.Batch batch) async {
    _ensureOpen();
    final response = await _client.request(
      json.Request.batch(batch: batch, streamId: _id),
    );
    final result = (response.response as json.BatchResp).result;
    return result;
  }

  @override
  Future<SqlTextId> storeSql(String sql) async {
    _ensureOpen();
    return await _client.storeSql(sql);
  }

  void markClosed() {
    if (!_isClosed) {
      _isClosed = true;
      _client._streams.remove(this);
      _closed.complete();
      _streamLock.release();
    }
  }
}

extension type SqlStreamId._(int stream) implements int {}
