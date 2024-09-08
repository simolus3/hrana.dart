import 'dart:async';
import 'dart:typed_data';

import 'package:stream_channel/stream_channel.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import 'exception.dart';
import 'protocol.pb.dart' as proto;
import 'rpc_client.dart';

final class HranaWebsocketClient implements HranaClient {
  final StreamChannel<dynamic> _channel;
  bool _closed = false;
  final Completer<void> _streamClosed = Completer();

  Completer<void>? _helloCompleter;
  final Map<int, Completer<proto.ResponseOkMsg>> _pendingRequests = {};
  int _nextRequestId = 0;
  int _nextStreamId = 0;
  int _nextSqlTextId = 0;

  HranaWebsocketClient._(this._channel) {
    _channel.stream.listen((data) {
      if (data is Uint8List) {
        _handleMessage(data);
      } else {
        throw 'Unexpected message: $data';
      }
    }, onDone: _closedByRemote);
  }

  @override
  bool get isClosed => _closed;

  @override
  Future<void> get closed => _streamClosed.future;

  void _closedByRemote() {
    _closed = true;
    for (final pending in _pendingRequests.values) {
      pending.completeError(const ConnectionClosed());
    }
    _streamClosed.complete();
  }

  @override
  Future<void> close() async {
    _closed = true;
    if (_channel case WebSocketChannel ws) {
      await ws.sink.close(1000, 'connection closed');
    } else {
      await _channel.sink.close();
    }

    await _streamClosed.future;
  }

  @override
  Future<SqlStreamId> openStream() async {
    final streamId = _nextStreamId++;
    await _request(
        proto.RequestMsg(openStream: proto.OpenStreamReq(streamId: streamId)));
    return SqlStreamId(streamId);
  }

  @override
  Future<void> closeStream(SqlStreamId id) async {
    await _request(
        proto.RequestMsg(closeStream: proto.CloseStreamReq(streamId: id.id)));
  }

  @override
  Future<StatementResult> executeStatement(
      SqlStreamId stream, StatementDescription stmt) async {
    final response = await _request(proto.RequestMsg(
      execute: proto.ExecuteReq(
        streamId: stream.id,
        stmt: stmt.toStatement(),
      ),
    ));

    return StatementResult.fromProto(response.execute.result);
  }

  @override
  Future<SqlTextId> storeSql(SqlStreamId stream, String sql) async {
    final textId = _nextSqlTextId++;
    await _request(
        proto.RequestMsg(storeSql: proto.StoreSqlReq(sqlId: textId, sql: sql)));
    return SqlTextId(textId);
  }

  @override
  Future<void> closeSql(SqlStreamId stream, SqlTextId id) async {
    await _request(proto.RequestMsg(closeSql: proto.CloseSqlReq(sqlId: id.id)));
  }

  @override
  Future<proto.BatchResult> runBatch(
      SqlStreamId stream, proto.Batch batch) async {
    final response = await _request(proto.RequestMsg(
        batch: proto.BatchReq(batch: batch, streamId: stream.id)));
    return response.batch.result;
  }

  Future<void> _hello(String? jwt) async {
    final completer = _helloCompleter = Completer();
    _send(proto.ClientMsg(hello: proto.HelloMsg(jwt: jwt)));
    await completer.future;
    _helloCompleter = null;
  }

  Future<proto.ResponseOkMsg> _request(proto.RequestMsg request) async {
    final id = _nextRequestId++;
    final completer = Completer<proto.ResponseOkMsg>();
    _pendingRequests[id] = completer;
    _send(proto.ClientMsg(request: request..requestId = id));

    return await completer.future;
  }

  void _send(proto.ClientMsg msg) {
    if (_closed) {
      throw const ConnectionClosed();
    }

    _channel.sink.add(msg.writeToBuffer());
  }

  void _handleMessage(Uint8List data) {
    final msg = proto.ServerMsg.fromBuffer(data);

    if (msg.hasHelloOk()) {
      _helloCompleter?.complete();
    } else if (msg.hasHelloError()) {
      _helloCompleter?.completeError(
        ServerException.fromProto(msg.helloError.error),
      );
    } else if (msg.hasResponseOk()) {
      final id = msg.responseOk.requestId;
      final completer = _pendingRequests.remove(id);
      completer?.complete(msg.responseOk);
    } else if (msg.hasResponseError()) {
      final id = msg.responseError.requestId;
      final completer = _pendingRequests.remove(id);
      completer?.completeError(
        ServerException.fromProto(msg.responseError.error),
      );
    }
  }

  static Future<HranaWebsocketClient> connect(Uri uri,
      {String? jwtToken}) async {
    final channel =
        WebSocketChannel.connect(uri, protocols: ['hrana3-protobuf']);
    await channel.ready;

    final client = HranaWebsocketClient._(channel);
    await client._hello(jwtToken);
    return client;
  }
}
