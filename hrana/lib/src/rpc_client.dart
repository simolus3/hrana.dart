import 'dart:async';
import 'dart:typed_data';

import 'package:fixnum/fixnum.dart';
import 'package:stream_channel/stream_channel.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'protocol.pb.dart' as proto;

final class HranaClient {
  final StreamChannel<dynamic> _channel;

  Completer<void>? _helloCompleter;
  final Map<int, Completer<proto.ResponseOkMsg>> _pendingRequests = {};
  int _nextRequestId = 0;
  int _nextStreamId = 0;

  HranaClient._(this._channel) {
    _channel.stream.listen((data) {
      if (data is Uint8List) {
        _handleMessage(data);
      } else {
        throw 'Unexpected message: $data';
      }
    });
  }

  Future<SqlStreamId> openStream() async {
    final streamId = _nextStreamId++;
    await _request(
        proto.RequestMsg(openStream: proto.OpenStreamReq(streamId: streamId)));
    return SqlStreamId(streamId);
  }

  Future<void> closeStream(SqlStreamId id) async {
    await _request(
        proto.RequestMsg(closeStream: proto.CloseStreamReq(streamId: id.id)));
  }

  Future<StatementResult> executeStatement(
      SqlStreamId stream, StatementDescription stmt) async {
    final response = await _request(proto.RequestMsg(
      execute: proto.ExecuteReq(
        streamId: stream.id,
        stmt: stmt._toStatement(),
      ),
    ));

    return StatementResult._fromProto(response.execute.result);
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
    _channel.sink.add(msg.writeToBuffer());
  }

  void _handleMessage(Uint8List data) {
    final msg = proto.ServerMsg.fromBuffer(data);

    if (msg.hasHelloOk()) {
      _helloCompleter?.complete();
    } else if (msg.hasHelloError()) {
      _helloCompleter?.completeError(_createError(msg.helloError.error));
    } else if (msg.hasResponseOk()) {
      final id = msg.responseOk.requestId;
      final completer = _pendingRequests.remove(id);
      completer?.complete(msg.responseOk);
    } else if (msg.hasResponseError()) {
      final id = msg.responseError.requestId;
      final completer = _pendingRequests.remove(id);
      completer?.completeError(_createError(msg.responseError.error));
    }
  }

  HranaException _createError(proto.Error error) {
    return HranaException(message: error.message, code: error.code);
  }

  static Future<HranaClient> connect(Uri uri, {String? jwtToken}) async {
    final channel =
        WebSocketChannel.connect(uri, protocols: ['hrana3-protobuf']);
    await channel.ready;

    final client = HranaClient._(channel);
    await client._hello(jwtToken);
    return client;
  }
}

extension type SqlStreamId(int id) {}

final class HranaException implements Exception {
  final String message;
  final String? code;

  HranaException({required this.message, required this.code});

  @override
  String toString() {
    return 'HranaException($code): $message';
  }
}

extension type Value(Object? value) {
  factory Value._fromProto(proto.Value value) {
    if (value.hasNull_1()) {
      return Value(null);
    } else if (value.hasInteger()) {
      return Value(value.integer.toInt());
    } else if (value.hasFloat()) {
      return Value(value.float);
    } else if (value.hasText()) {
      return Value(value.text);
    } else if (value.hasBlob()) {
      return Value(value.blob);
    } else {
      throw UnsupportedError('Unknown proto value type $value');
    }
  }

  proto.Value _toProto() {
    return switch (this) {
      null => proto.Value(null_1: proto.Value_Null()),
      int i => proto.Value(integer: Int64(i)),
      double f => proto.Value(float: f),
      String t => proto.Value(text: t),
      List<int> b => proto.Value(blob: b),
      _ => throw UnsupportedError('Unsupported value $value'),
    };
  }
}

sealed class StatementDescription {
  final List<Value> args;
  final List<(String, Value)> namedArgs;
  final bool wantRows;

  StatementDescription({
    required this.args,
    required this.namedArgs,
    required this.wantRows,
  });

  proto.Stmt _toStatement();

  Iterable<proto.Value> _encodeArgs() {
    return args.map((e) => e._toProto());
  }

  Iterable<proto.NamedArg> _encodeNamedArgs() {
    return namedArgs
        .map((e) => proto.NamedArg(name: e.$1, value: e.$2._toProto()));
  }
}

final class SqlStatement extends StatementDescription {
  final String sql;

  SqlStatement({
    required super.args,
    required super.namedArgs,
    required super.wantRows,
    required this.sql,
  });

  @override
  proto.Stmt _toStatement() {
    return proto.Stmt(
      sql: sql,
      args: _encodeArgs(),
      namedArgs: _encodeNamedArgs(),
      wantRows: wantRows,
    );
  }
}

final class Column {
  final String? name;
  final String? decltype;

  Column({required this.name, required this.decltype});

  factory Column._fromProto(proto.Col column) {
    return Column(
      name: column.name,
      decltype: column.hasDecltype() ? column.decltype : null,
    );
  }

  @override
  String toString() {
    return 'Col($name, $decltype)';
  }
}

final class StatementResult {
  final List<Column> columns;
  final List<List<Value>> rows;
  final int affectedRowCount;
  final int? lastInsertRowId;

  StatementResult({
    required this.columns,
    required this.rows,
    required this.affectedRowCount,
    required this.lastInsertRowId,
  });

  factory StatementResult._fromProto(proto.StmtResult result) {
    return StatementResult(
      columns: [
        for (final col in result.cols) Column._fromProto(col),
      ],
      rows: [
        for (final row in result.rows)
          [
            for (final value in row.values) Value._fromProto(value),
          ]
      ],
      affectedRowCount: result.affectedRowCount.toInt(),
      lastInsertRowId:
          result.hasLastInsertRowid() ? null : result.lastInsertRowid.toInt(),
    );
  }

  @override
  String toString() {
    return 'StatementResult(cols = $columns, rows = $rows, count = $affectedRowCount, last id = $lastInsertRowId)';
  }
}
