import 'package:sqlite3/common.dart';

import 'exception.dart';
import 'protocol.pb.dart' as proto;
import 'rpc_client.dart';
import 'rpc_http_client.dart';
import 'rpc_ws_client.dart';

/// A connection to a remote sqlite3 database following the hrana protocol.
///
/// After connecting to a database, e.g. with
///
/// ```dart
///  final database = await Database.connect(Uri.parse('ws://localhost:8080/'));
/// ```
///
/// remote requests can be sent to the database with [select] and [execute].
final class Database {
  final HranaClient _client;
  final SqlStreamId _stream;

  Database._(this._client, this._stream);

  /// Connects to a hrana server under the given [uri].
  ///
  /// The `scheme` of [uri] should be one of: `libsql`, `http`, `https`, `ws`
  /// or `wss`.
  ///
  /// Optionally, a [jwtToken] can be passed for authentication purposes.
  static Future<Database> connect(Uri uri, {String? jwtToken}) async {
    if (uri.scheme == 'libsql') {
      uri = uri.replace(scheme: 'https');
    }
    final client = switch (uri.scheme) {
      'ws' || 'wss' => await HranaWebsocketClient.connect(
          uri,
          jwtToken: jwtToken,
        ),
      'http' || 'https' => await HranaHttpClient.connect(
          uri,
          jwtToken: jwtToken,
        ),
      _ => throw ArgumentError.value(
          uri,
          'uri',
          'Scheme must be one of: "libsql", "http", "https", "ws" or "wss"',
        ),
    };
    final stream = await client.openStream();

    return Database._(client, stream);
  }

  StatementDescription _describe(dynamic sql, List<Object?> arguments,
      Map<String, Object?> namedArguments, bool wantRows) {
    // This is ok, Value = Object?
    final rawArgs = arguments as List<Value>;
    final rawNamed = [
      for (final MapEntry(:key, :value) in namedArguments.entries)
        (key, Value(value)),
    ];

    return switch (sql) {
      StoredSql(_id: final id) => StoredStatement(
          args: rawArgs, namedArgs: rawNamed, wantRows: wantRows, id: id),
      final String sql => SqlStatement(
          args: rawArgs, namedArgs: rawNamed, wantRows: wantRows, sql: sql),
      _ => throw ArgumentError.value(
          sql,
          'sql',
          'Should be String or StoredSql',
        ),
    };
  }

  Future<StatementResult> _runSql(dynamic sql, List<Object?> arguments,
      Map<String, Object?> namedArguments, bool wantRows) async {
    return await _client.executeStatement(
        _stream, _describe(sql, arguments, namedArguments, wantRows));
  }

  /// Runs [sql] with [arguments] and [namedArguments], returning results as
  /// a [ResultSet].
  ///
  /// The value for arguments may be one of the following types: `Null`, `num`,
  /// `String`, `List<int>`.
  Future<ResultSet> select(
    String sql, {
    List<Object?> arguments = const [],
    Map<String, Object?> namedArguments = const {},
  }) async {
    final response = await _runSql(sql, arguments, namedArguments, true);
    return response.interpreteAsResultSet();
  }

  /// Runs [sql] with [arguments] and [namedArguments], returning affected rows
  /// and the rowid of the last inserted row, if any.
  ///
  /// The value for arguments may be one of the following types: `Null`, `num`,
  /// `String`, `List<int>`.
  Future<({int affectedRows, int? lastInsertRowId})> execute(
    String sql, {
    List<Object?> arguments = const [],
    Map<String, Object?> namedArguments = const {},
  }) async {
    final response = await _runSql(sql, arguments, namedArguments, false);
    return response.interpretAsExecuteResult();
  }

  /// Stores [sql] on the database server, which avoids having to send it over
  /// the network frequently when running it multiple times.
  ///
  /// The saved statement can then be executed with [StoredSql.select] and
  /// [StoredSql.execute].
  /// After using it, it must be closed with [StoredSql.close].
  Future<StoredSql> storeSql(String sql) async {
    final id = await _client.storeSql(_stream, sql);
    return StoredSql._(_stream, id, this);
  }

  /// Collects statements to run in a batch (via [BatchBuilder]) and then runs
  /// them at once on the server.
  ///
  /// The returned [BatchResult] holds results for every submitted statements.
  /// A [BatchRequest] returned by the builder can be used to associate requests
  /// with responses:
  ///
  /// ```dart
  /// late BatchRequest select;
  /// final result = await database.batch((builder) {
  ///   select = builder.select('SELECT * FROM users;');
  /// });
  /// final rows = result.selectResult(select)!;
  /// ```
  Future<BatchResult> batch(
      void Function(BatchBuilder builder) buildBatch) async {
    final builder = BatchBuilder._(this);
    buildBatch(builder);

    final response = await _client.runBatch(_stream, builder._batch);
    return BatchResult._(response);
  }

  /// Returns a future that completes with a value when this database has
  /// closed.
  ///
  /// The database may close due to [close] being called, but it may also close
  /// due to a fatal server error or the websocket loosing connectivity.
  Future<void> get closed => _client.closed;

  /// Closes the database connection and the underlying socket to a libsql
  /// server.
  Future<void> close() async {
    if (!_client.isClosed) {
      await _client.closeStream(_stream);
    }

    await _client.close();
  }
}

/// An instance of SQL text stored by the remote server.
///
/// This allows [select] and [execute] to run without re-sending the SQL text
/// over the network multiple times.
///
/// After the [StoredSql] instance is no longer used, it must be [close]d to
/// free up resources on the server.
final class StoredSql {
  final SqlStreamId _streamId;
  final SqlTextId _id;
  final Database _database;
  bool _closed = false;

  StoredSql._(this._streamId, this._id, this._database);

  void _checkNotClosed() {
    if (_closed) {
      throw StateError('StoredSql instance has already been closed');
    }
  }

  /// Runs this statement with [arguments] and [namedArguments], returning
  /// results as a [ResultSet].
  ///
  /// The value for arguments may be one of the following types: `Null`, `num`,
  /// `String`, `List<int>`.
  Future<ResultSet> select({
    List<Object?> arguments = const [],
    Map<String, Object?> namedArguments = const {},
  }) async {
    _checkNotClosed();

    final response =
        await _database._runSql(this, arguments, namedArguments, true);
    return response.interpreteAsResultSet();
  }

  /// Runs this statement with [arguments] and [namedArguments], returning
  /// affected rows and the rowid of the last inserted row, if any.
  ///
  /// The value for arguments may be one of the following types: `Null`, `num`,
  /// `String`, `List<int>`.
  Future<({int affectedRows, int? lastInsertRowId})> execute({
    List<Object?> arguments = const [],
    Map<String, Object?> namedArguments = const {},
  }) async {
    _checkNotClosed();

    final response =
        await _database._runSql(this, arguments, namedArguments, true);
    return response.interpretAsExecuteResult();
  }

  /// Deletes this stored SQL instance from the server.
  Future<void> close() async {
    if (!_closed) {
      _closed = true;
      await _database._client.closeSql(_streamId, _id);
    }
  }
}

/// A submitted part of a batch.
///
/// This can be passed to [BatchResult] methods to obtain the results of running
/// an individual batch statement.
extension type BatchRequest._(int _id) {}

/// Collects statements to run in a [Database.batch].
final class BatchBuilder {
  final proto.Batch _batch = proto.Batch();
  final Database _database;

  BatchBuilder._(this._database);

  (BatchRequest, proto.BatchCond?) _newRequest() {
    final request = BatchRequest._(_batch.steps.length);
    return (
      request,
      request._id == 0 ? null : proto.BatchCond(stepOk: request._id - 1)
    );
  }

  /// Adds a [Database.execute] call to this batch.
  BatchRequest execute(
    String sql, {
    List<Object?> arguments = const [],
    Map<String, Object?> namedArguments = const {},
  }) {
    final (request, cond) = _newRequest();
    _batch.steps.add(proto.BatchStep(
      stmt: _database
          ._describe(sql, arguments, namedArguments, false)
          .toStatement(),
      condition: cond,
    ));
    return request;
  }

  /// Adds a [Database.select] call to this batch.
  BatchRequest select(
    String sql, {
    List<Object?> arguments = const [],
    Map<String, Object?> namedArguments = const {},
  }) {
    final (request, cond) = _newRequest();
    _batch.steps.add(proto.BatchStep(
      stmt: _database
          ._describe(sql, arguments, namedArguments, true)
          .toStatement(),
      condition: cond,
    ));
    return request;
  }

  /// Adds a [StoredSql.execute] call to this batch.
  BatchRequest executeStored(
    StoredSql sql, {
    List<Object?> arguments = const [],
    Map<String, Object?> namedArguments = const {},
  }) {
    final (request, cond) = _newRequest();
    _batch.steps.add(proto.BatchStep(
      stmt: _database
          ._describe(sql, arguments, namedArguments, false)
          .toStatement(),
      condition: cond,
    ));
    return request;
  }

  /// Adds a [StoredSql.select] call to this batch.
  BatchRequest selectStored(
    StoredSql sql, {
    List<Object?> arguments = const [],
    Map<String, Object?> namedArguments = const {},
  }) {
    final (request, cond) = _newRequest();
    _batch.steps.add(proto.BatchStep(
      stmt: _database
          ._describe(sql, arguments, namedArguments, true)
          .toStatement(),
      condition: cond,
    ));
    return request;
  }
}

final class BatchResult {
  final proto.BatchResult _result;

  BatchResult._(this._result);

  StatementResult? _rawResult(BatchRequest request) {
    if (_result.stepErrors[request._id] case proto.Error e) {
      throw ServerException.fromProto(e);
    }
    if (_result.stepResults[request._id] case proto.StmtResult r) {
      return StatementResult.fromProto(r);
    }

    return null;
  }

  /// Returns the result of a batched [Database.select] call, if the call
  /// succeeded.
  ///
  /// Throws a [HranaException] if the call has failed and returns `null` if the
  /// call didn't run, for instance because an earlier statement of the batch
  /// has failed.
  ResultSet? selectResult(BatchRequest request) {
    final result = _rawResult(request);
    return result?.interpreteAsResultSet();
  }

  /// Returns the result of a batched [Database.execute] call, if the call
  /// succeeded.
  ///
  /// Throws a [HranaException] if the call has failed and returns `null` if the
  /// call didn't run, for instance because an earlier statement of the batch
  /// has failed.
  ({int affectedRows, int? lastInsertRowId})? executeResult(
      BatchRequest request) {
    final result = _rawResult(request);
    return result?.interpretAsExecuteResult();
  }
}

extension on StatementResult {
  ResultSet interpreteAsResultSet() {
    return ResultSet(
      [for (final column in columns) column.name ?? ''],
      null,
      rows,
    );
  }

  ({int affectedRows, int? lastInsertRowId}) interpretAsExecuteResult() {
    return (
      affectedRows: affectedRowCount,
      lastInsertRowId: lastInsertRowId,
    );
  }
}
