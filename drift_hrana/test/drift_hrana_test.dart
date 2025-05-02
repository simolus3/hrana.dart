import 'dart:async';

import 'package:drift/drift.dart';
import 'package:drift_hrana/drift_hrana.dart';
import 'package:test/test.dart';

import '../example/main.dart';
import 'target_server.dart';

void main() {
  late AppDatabase database;

  for (final server in targetServers) {
    group(server.name, () {
      setUp(() {
        database = AppDatabase(
          HranaDatabase(
            server.uri(),
            jwtToken: server.authToken(),
          ),
        );
      });

      tearDown(() async {
        await database.close();
      });

      test('reports dialect as sqlite', () async {
        expect(database.executor.dialect, SqlDialect.sqlite);
      });

      test('statements', () async {
        final note = await database.notes.insertReturning(
            NotesCompanion.insert(content: 'my first todo note'));
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

      test('supports table migrations', () async {
        // Regression test for https://github.com/simolus3/drift/issues/3088

        await database.notes
            .insertOne(NotesCompanion.insert(content: 'existing content'));

        // create unrelated table and view
        await database.customStatement('''
CREATE TABLE unrelated (
  id INTEGER NOT NULL PRIMARY KEY,
  content TEXT
);
''');
        await database.customInsert(
            'INSERT INTO unrelated (content) VALUES (?)',
            variables: [Variable.withString('foo')]);
        await database.customStatement(
            'CREATE VIEW unrelated_view AS SELECT * FROM unrelated;');

        // Issue table migration. Drift normally tries to enable the legacy alter
        // table behavior for this, which is disabled with Turso.
        await Migrator(database).alterTable(TableMigration(database.notes));

        // Table should still be there
        expect(await database.notes.all().get(), hasLength(1));

        // And the unrelated table with data should also work.
        expect(
            await database.customSelect('SELECT * FROM unrelated_view').get(),
            hasLength(1));
      });
    });
  }
}
