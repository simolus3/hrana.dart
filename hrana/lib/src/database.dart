import 'dart:async';

import 'package:sqlite3/common.dart';

import 'exception.dart';
import 'protocol.json.dart' as json;
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
/// You can create short-lived sessions attached to the database with
/// [openSession]. On a [DatabaseSession], you can [DatabaseSession.select] or
/// [DatabaseSession.execute] to run statements. Note that, depending on the
/// connection type used, database sessions might time out after a few seconds.
/// Thus, a [DatabaseSession] should be used immediately after it has been
/// obtained.
final class Database {
  final HranaClient _client;

  Database._(this._client);

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

    return Database._(client);
  }

  /// Opens a database session on the server.
  ///
  /// Sessions are used to access the database and prepare or execute
  /// statements. On the stateless HTTP connection, sessions are fairly short-
  /// lived and should not be used for long.
  /// On the websocket connection, sessions can be long-lived. In both cases,
  /// sessions should be closed with [DatabaseSession.close] when done.
  Future<DatabaseSession> openSession() async {
    final stream = await _client.openStream();
    return DatabaseSession(stream);
  }

  /// Opens a short-lived session for [inner] and closes it after the inner
  /// future returns.
  Future<T> withSession<T>(
      FutureOr<T> Function(DatabaseSession session) inner) async {
    final session = await openSession();

    try {
      return await inner(session);
    } finally {
      await session.close();
    }
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
    await _client.close();
  }
}

final class DatabaseSession {
  final HranaStream _stream;

  DatabaseSession(this._stream);

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
    return await _stream
        .executeStatement(_describe(sql, arguments, namedArguments, wantRows));
  }

  /// Sends an empty request with this session to ensure that it is still open.
  ///
  /// If [closed] is true after calling [ping], the session is no longer open.
  /// Otherwise, the timeout on the server is reset and the session is likely
  /// open for a few more seconds.
  Future<void> ping() async {
    await _stream.checkOpen();
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
    final id = await _stream.storeSql(sql);
    return StoredSql._(id, this);
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

    final response = await _stream.runBatch(builder._batch);
    return BatchResult._(response);
  }

  /// Returns a future that completes with a value when this database has
  /// closed.
  ///
  /// The database may close due to [close] being called, but it may also close
  /// due to a fatal server error or the websocket loosing connectivity.
  Future<void> get closed => _stream.closed;

  /// Closes this stream on the server without closing the entire connection.
  Future<void> close() async {
    await _stream.closeStream();
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
  final SqlTextId _id;
  final DatabaseSession _session;
  bool _closed = false;

  StoredSql._(this._id, this._session);

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
        await _session._runSql(this, arguments, namedArguments, true);
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
        await _session._runSql(this, arguments, namedArguments, true);
    return response.interpretAsExecuteResult();
  }

  /// Deletes this stored SQL instance from the server.
  Future<void> close() async {
    if (!_closed) {
      _closed = true;
      await _session._stream.closeSql(_id);
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
  final List<json.BatchStep> _batchSteps = [];
  json.Batch get _batch => json.Batch(steps: _batchSteps);

  final DatabaseSession _session;

  BatchBuilder._(this._session);

  (BatchRequest, json.BatchCond?) _newRequest() {
    final request = BatchRequest._(_batchSteps.length);
    return (
      request,
      request._id == 0 ? null : json.BatchCond.stepOk(request._id - 1)
    );
  }

  /// Adds a [Database.execute] call to this batch.
  BatchRequest execute(
    String sql, {
    List<Object?> arguments = const [],
    Map<String, Object?> namedArguments = const {},
  }) {
    final (request, cond) = _newRequest();
    _batchSteps.add(json.BatchStep(
      stmt: _session
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
    _batchSteps.add(json.BatchStep(
      stmt: _session
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
    _batchSteps.add(json.BatchStep(
      stmt: _session
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
    _batchSteps.add(json.BatchStep(
      stmt: _session
          ._describe(sql, arguments, namedArguments, true)
          .toStatement(),
      condition: cond,
    ));
    return request;
  }
}

final class BatchResult {
  final json.BatchResult _result;

  BatchResult._(this._result);

  StatementResult? _rawResult(BatchRequest request) {
    if (_result.stepErrors[request._id] case json.StreamError e) {
      throw ServerException.fromJson(e);
    }
    if (_result.stepResults[request._id] case json.StmtResult r) {
      return StatementResult.fromJson(r);
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
