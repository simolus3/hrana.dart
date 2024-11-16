import 'dart:async';

import 'package:docker_process/docker_process.dart';
import 'package:drift/drift.dart';
import 'package:drift_hrana/drift_hrana.dart';
import 'package:test/test.dart';

import '../example/main.dart';
import 'start_server.dart';

void main() {
  late int port;
  late DockerProcess server;

  setUpAll(() async {
    port = await selectFreePort();
    server = await startSqld(port);
  });

  tearDownAll(() async {
    await server.stop();
  });

  late AppDatabase database;

  setUp(() {
    database = AppDatabase(HranaDatabase(Uri.parse('ws://localhost:$port/')));
  });
  tearDown(() async {
    await database.close();
  });

  test('reports dialect as sqlite', () async {
    expect(database.executor.dialect, SqlDialect.sqlite);
  });

  test('statements', () async {
    final note = await database.notes
        .insertReturning(NotesCompanion.insert(content: 'my first todo note'));
    expect(note.content, 'my first todo note');

    final all = await database.notes.all().get();
    expect(all, contains(note));
  });

  test('transactions', () async {
    await database.notes
        .insertOne(NotesCompanion.insert(content: 'about to be deleted'));
    await database.transaction(() async {
      await database.notes.delete().go();
    });

    expect(await database.notes.all().get(), isEmpty);
  });

  test('concurrent transactions and top-level statemens', () async {
    await database.notes
        .insertOne(NotesCompanion.insert(content: 'about to be deleted'));
    final completeTransaction = Completer<void>();

    final transactionDone = database.transaction(() async {
      await database.notes.delete().go();
      await completeTransaction.future;
    });

    expect(await database.notes.all().get(), isNotEmpty);
    completeTransaction.complete();
    await transactionDone;
    expect(await database.notes.all().get(), isEmpty);
  });
}
