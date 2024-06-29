import 'package:docker_process/docker_process.dart';
import 'package:hrana/hrana.dart';
import 'package:test/test.dart';

import 'start_server.dart';

void main() {
  late int port;
  late DockerProcess server;

  late Database database;

  setUpAll(() async {
    port = await selectFreePort();
    server = await startSqld(port);
  });

  tearDownAll(() async {
    await server.stop();
  });

  setUp(() async {
    database = await Database.connect(Uri.parse('ws://localhost:$port/'));

    await database
        .execute('CREATE TABLE users (name TEXT, CHECK (LENGTH(name) < 10));');
  });

  tearDown(() async {
    await database.execute('DROP TABLE users;');

    await database.close();
  });

  test('can select statements', () async {
    final result = await database.select('SELECT 1 AS r;');
    expect(result.columnNames, ['r']);
    expect(result.rows, [
      [1]
    ]);
  });

  test('can execute statements', () async {
    final result = await database.execute(
      'INSERT INTO users (name) VALUES (?);',
      arguments: ['name'],
    );
    expect(result.affectedRows, 1);
    expect(result.lastInsertRowId, 1, skip: 'rowid appears to not be sent');
  });

  group('stored statements', () {
    test('can be executed', () async {
      final stored =
          await database.storeSql('INSERT INTO users (name) VALUES (?);');
      final result = await stored.execute(arguments: ['Stored']);
      expect(result.affectedRows, 1);
    });

    test('can be selected', () async {
      final stored = await database.storeSql('SELECT 1');
      final result = await stored.select();
      expect(result.rows, [
        [1]
      ]);
    });

    test("don't work after being closed", () async {
      final stored = await database.storeSql('SELECT 1');
      await stored.close();
      expect(() => stored.execute(), throwsStateError);
    });
  });

  group('batch', () {
    test('can run statements', () async {
      final storedSelect = await database.storeSql('SELECT * FROM users;');
      final storedExecute =
          await database.storeSql('INSERT INTO users (name) VALUES (?);');

      final results = await database.batch((builder) {
        builder
          ..executeStored(storedExecute, arguments: ['first'])
          ..select('SELECT * FROM users;')
          ..execute('INSERT INTO users (name) VALUES (?)',
              arguments: ['second'])
          ..selectStored(storedSelect);
      });

      final firstSelect = results.selectResult(1 as BatchRequest);
      final secondSelect = results.selectResult(3 as BatchRequest);

      expect(firstSelect!.rows, [
        ['first']
      ]);
      expect(secondSelect!.rows, [
        ['first'],
        ['second']
      ]);
    });

    test('does not run statements after failure', () async {
      final results = await database.batch((builder) {
        builder
          ..execute('INSERT INTO users (name) VALUES (?);', arguments: [
            'very long name that will be rejected by the check constraint'
          ])
          ..execute('SELECT * FROM users;');
      });

      expect(() => results.executeResult(0 as BatchRequest),
          throwsA(isA<ServerException>()));
      expect(results.selectResult(1 as BatchRequest), isNull);
    });
  });
}
