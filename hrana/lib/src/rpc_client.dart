import 'package:fixnum/fixnum.dart';

import 'protocol.pb.dart' as proto;

abstract interface class HranaClient {
  Future<SqlStreamId> openStream();
  Future<void> closeStream(SqlStreamId id);
  Future<StatementResult> executeStatement(
      SqlStreamId stream, StatementDescription stmt);
  Future<SqlTextId> storeSql(SqlStreamId stream, String sql);
  Future<void> closeSql(SqlStreamId stream, SqlTextId id);
  Future<proto.BatchResult> runBatch(SqlStreamId stream, proto.Batch batch);
  Future<void> close();
  bool get isClosed;
  Future<void> get closed;
}

extension type SqlStreamId(int id) {}

extension type SqlTextId(int id) {}

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

  proto.Stmt toStatement();

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
  proto.Stmt toStatement() {
    return proto.Stmt(
      sql: sql,
      args: _encodeArgs(),
      namedArgs: _encodeNamedArgs(),
      wantRows: wantRows,
    );
  }
}

final class StoredStatement extends StatementDescription {
  final SqlTextId id;

  StoredStatement({
    required super.args,
    required super.namedArgs,
    required super.wantRows,
    required this.id,
  });

  @override
  proto.Stmt toStatement() {
    return proto.Stmt(
      sqlId: id.id,
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

  factory StatementResult.fromProto(proto.StmtResult result) {
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
          result.hasLastInsertRowid() ? result.lastInsertRowid.toInt() : null,
    );
  }

  @override
  String toString() {
    return 'StatementResult(cols = $columns, rows = $rows, count = $affectedRowCount, last id = $lastInsertRowId)';
  }
}
