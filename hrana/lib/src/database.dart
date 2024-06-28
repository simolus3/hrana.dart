import 'package:sqlite3/common.dart';

import 'rpc_client.dart';

final class Database {
  final HranaClient client;
  final SqlStreamId stream;

  Database._(this.client, this.stream);

  static Future<Database> connect(Uri uri, {String? jwtToken}) async {
    final client = await HranaClient.connect(uri, jwtToken: jwtToken);
    final stream = await client.openStream();

    return Database._(client, stream);
  }

  Future<ResultSet> select(
    String sql, {
    List<Object?> arguments = const [],
    Map<String, Object?> namedArguments = const {},
  }) async {
    final response = await client.executeStatement(
      stream,
      SqlStatement(
        // This is ok, Value = Object?
        args: arguments as List<Value>,
        namedArgs: [
          for (final MapEntry(:key, :value) in namedArguments.entries)
            (key, Value(value)),
        ],
        wantRows: true,
        sql: sql,
      ),
    );

    return ResultSet(
      [for (final column in response.columns) column.name ?? ''],
      null,
      response.rows,
    );
  }

  Future<({int affectedRows, int? lastInsertRowId})> execute(
    String sql, {
    List<Object?> arguments = const [],
    Map<String, Object?> namedArguments = const {},
  }) async {
    final response = await client.executeStatement(
      stream,
      SqlStatement(
        // This is ok, Value = Object?
        args: arguments as List<Value>,
        namedArgs: [
          for (final MapEntry(:key, :value) in namedArguments.entries)
            (key, Value(value)),
        ],
        wantRows: false,
        sql: sql,
      ),
    );

    return (
      affectedRows: response.affectedRowCount,
      lastInsertRowId: response.lastInsertRowId,
    );
  }

  Future<void> close() async {
    client.closeStream(stream);
  }
}
