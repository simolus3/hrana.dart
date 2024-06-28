/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

import 'dart:async';

import 'package:drift/backends.dart';
import 'package:hrana/hrana.dart';

final class HranaDatabase extends DelegatedDatabase {
  HranaDatabase._(super.delegate);

  HranaDatabase(Uri uri, {String? jwtToken})
      : this._(_HranaDelegate(uri: uri, jwtToken: jwtToken));
}

final class _HranaDelegate extends DatabaseDelegate {
  Database? _database;
  final Uri uri;
  final String? jwtToken;

  _HranaDelegate({required this.uri, required this.jwtToken});

  @override
  Future<void> runCustom(String statement, List<Object?> args) async {
    await _database!.execute(statement, arguments: args);
  }

  @override
  Future<int> runInsert(String statement, List<Object?> args) async {
    final res = await _database!.execute(statement, arguments: args);
    return res.lastInsertRowId ?? 0;
  }

  @override
  Future<QueryResult> runSelect(String statement, List<Object?> args) async {
    final res = await _database!.select(statement, arguments: args);
    return QueryResult(res.columnNames, res.rows);
  }

  @override
  Future<int> runUpdate(String statement, List<Object?> args) async {
    final res = await _database!.execute(statement, arguments: args);
    return res.affectedRows;
  }

  @override
  FutureOr<bool> get isOpen => Future.value(_database != null);

  @override
  Future<void> open(QueryExecutorUser db) async {
    _database = await Database.connect(uri, jwtToken: jwtToken);
  }

  @override
  TransactionDelegate get transactionDelegate => const NoTransactionDelegate();

  @override
  DbVersionDelegate get versionDelegate =>
      _HranaVersionDelegate(delegate: this);
}

final class _HranaVersionDelegate extends DynamicVersionDelegate {
  final _HranaDelegate delegate;

  _HranaVersionDelegate({required this.delegate});

  @override
  Future<int> get schemaVersion async {
    final result = await delegate._database!.select('pragma user_version;');
    return result.rows.first.first as int;
  }

  @override
  Future<void> setSchemaVersion(int version) async {
    await delegate._database!.execute('pragma user_version = $version;');
  }
}
