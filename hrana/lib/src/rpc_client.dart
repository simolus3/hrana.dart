@internal
library;

import 'dart:typed_data';

import 'package:fixnum/fixnum.dart';
import 'package:meta/meta.dart';

import 'protocol.json.dart' as json;

abstract interface class HranaClient {
  Future<HranaStream> openStream();
  Future<void> close();

  Future<void> get closed;
  bool get isClosed;
}

abstract interface class HranaStream {
  Future<bool> checkOpen();

  Future<StatementResult> executeStatement(StatementDescription stmt);
  Future<SqlTextId> storeSql(String sql);
  Future<void> closeSql(SqlTextId id);
  Future<json.BatchResult> runBatch(json.Batch batch);
  Future<void> closeStream();

  Future<void> get closed;
}

extension type SqlTextId(int id) {}

extension type Value(Object? value) {
  factory Value._fromJson(json.Value value) {
    return switch (value) {
      json.NullValue() => Value(null),
      json.IntegerValue(:final value) => Value(value.toInt()),
      json.FloatValue(:final value) => Value(value),
      json.TextValue(:final value) => Value(value),
      json.BlobValue(:final value) => Value(value)
    };
  }

  json.Value _toJson() {
    return switch (this) {
      null => json.Value.null$(),
      int i => json.Value.integer(Int64(i)),
      double f => json.Value.float(f),
      String t => json.Value.text(t),
      List<int> b => json.Value.blob(Uint8List.fromList(b)),
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

  json.Stmt toStatement();

  List<json.Value> _encodeArgs() {
    return args.map((e) => e._toJson()).toList();
  }

  List<json.NamedArg> _encodeNamedArgs() {
    return namedArgs
        .map((e) => json.NamedArg(name: e.$1, value: e.$2._toJson()))
        .toList();
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
  json.Stmt toStatement() {
    return json.Stmt(
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
  json.Stmt toStatement() {
    return json.Stmt(
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

  factory Column._fromJson(json.Col column) {
    return Column(
      name: column.name,
      decltype: column.decltype,
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

  factory StatementResult.fromJson(json.StmtResult result) {
    return StatementResult(
      columns: [
        for (final col in result.cols) Column._fromJson(col),
      ],
      rows: [
        for (final row in result.rows)
          [
            for (final value in row) Value._fromJson(value),
          ]
      ],
      affectedRowCount: result.affectedRowCount,
      lastInsertRowId: result.lastInsertRowid?.toInt(),
    );
  }

  @override
  String toString() {
    return 'StatementResult(cols = $columns, rows = $rows, count = $affectedRowCount, last id = $lastInsertRowId)';
  }
}
