import 'dart:convert';
import 'dart:io';

import 'package:docker_process/docker_process.dart';
import 'package:hrana/hrana.dart';
import 'package:test/test.dart';

import 'start_server.dart';

typedef TargetServer = ({
  Uri Function(String scheme) uri,
  String? Function() authToken
});

TargetServer withLocalServer() {
  late int port;
  late DockerProcess server;

  setUpAll(() async {
    port = await selectFreePort();
    server = await startSqld(port);
  });

  tearDownAll(() async {
    await server.stop();
  });

  return (
    uri: (scheme) => Uri.parse('$scheme://localhost:$port/'),
    authToken: () => null,
  );
}

TargetServer withTursoServer() {
  late String databaseName;
  late String databaseUrl;
  late String authToken;

  setUpAll(() async {
    databaseName = 'hrana-dart-test-${DateTime.now().millisecondsSinceEpoch}';
    await _runProcess('turso', ['db', 'create', databaseName]);
    databaseUrl = await _runProcess('turso', [
      'db',
      'show',
      databaseName,
      '--url',
    ]);
    authToken = await _runProcess('turso', [
      'db',
      'tokens',
      'create',
      databaseName,
    ]);
  });

  tearDownAll(() async {
    await _runProcess('turso', ['db', 'destroy', '--yes', databaseName]);
  });

  return (
    uri: (scheme) {
      final uri = Uri.parse(databaseUrl);
      return uri.replace(
        scheme: switch (scheme) {
          'http' => 'https',
          'ws' => 'wss',
          _ => scheme,
        },
      );
    },
    authToken: () => authToken,
  );
}

void main() {
  late Database database;
  late DatabaseSession session;

  final targetServers = [
    ('localhost', withLocalServer()),
    if (Platform.environment['TURSO_API_TOKEN'] case final token?
        when token.isNotEmpty)
      ('turso cloud', withTursoServer())
    else
      ('turso cloud', null)
  ];

  for (final (name, target) in targetServers) {
    group(name, () {
      late final server = target!;

      for (final scheme in const ['http', 'ws']) {
        group(scheme, () {
          setUp(() async {
            database = await Database.connect(
              server.uri(scheme),
              jwtToken: server.authToken(),
            );

            session = await database.openSession();
            await session.execute(
              '''
CREATE TABLE users (
  name TEXT,
  integer INTEGER,
  float REAL,
  blob BLOB,
  CHECK (LENGTH(name) < 10)
);
''',
            );
          });

          tearDown(() async {
            await database.withSession((session) async {
              await session.execute('DROP TABLE users;');
            });

            await session.close();
            await database.close();
          });

          test('can select statements', () async {
            final result = await session.select('SELECT 1 AS r;');
            expect(result.columnNames, ['r']);
            expect(result.rows, [
              [1]
            ]);
          });

          test('can execute statements', () async {
            final result = await session.execute(
              'INSERT INTO users (name) VALUES (?);',
              arguments: ['name'],
            );
            expect(result.affectedRows, 1);
            expect(result.lastInsertRowId, 1);
          });

          test("can't use session after closing it", () async {
            await session.close();

            await expectLater(() => session.select('SELECT 1'),
                throwsA(isA<ConnectionClosed>()));
          });

          group('stored statements', () {
            test('can be executed', () async {
              final stored = await session
                  .storeSql('INSERT INTO users (name) VALUES (?);');
              final result = await stored.execute(arguments: ['Stored']);
              expect(result.affectedRows, 1);
              expect(result.lastInsertRowId, 1);
            });

            test('can be selected', () async {
              await session.execute(
                'INSERT INTO users (name, integer, float, blob) VALUES (?, ?, ?, ?);',
                arguments: [
                  'Stored',
                  1,
                  1.0,
                  [1, 2, 3],
                ],
              );
              final stored = await session.storeSql(
                'SELECT * FROM users where name = ?;',
              );
              final result = await stored.select(arguments: ['Stored']);
              expect(result.rows, [
                [
                  'Stored',
                  1,
                  1.0,
                  [1, 2, 3]
                ],
              ]);
            });

            test("don't work after being closed", () async {
              final stored = await session.storeSql('SELECT 1');
              await stored.close();
              expect(() => stored.execute(), throwsStateError);
            });
          });

          group('batch', () {
            test('can run statements', () async {
              final storedSelect =
                  await session.storeSql('SELECT * FROM users;');
              final storedExecute = await session.storeSql(
                  'INSERT INTO users (name, integer, float, blob) VALUES (?, ?, ?, ?);');

              final results = await session.batch((builder) {
                builder
                  ..executeStored(storedExecute, arguments: [
                    'first',
                    1,
                    1.0,
                    [1, 2, 3]
                  ])
                  ..select('SELECT * FROM users;')
                  ..execute(
                    'INSERT INTO users (name, integer, float, blob) VALUES (?, ?, ?, ?)',
                    arguments: [
                      'second',
                      2,
                      2.0,
                      [2, 3, 4]
                    ],
                  )
                  ..selectStored(storedSelect);
              });

              final firstSelect = results.selectResult(1 as BatchRequest);
              final secondSelect = results.selectResult(3 as BatchRequest);

              expect(firstSelect!.rows, [
                [
                  'first',
                  1,
                  1.0,
                  [1, 2, 3]
                ],
              ]);
              expect(secondSelect!.rows, [
                [
                  'first',
                  1,
                  1.0,
                  [1, 2, 3]
                ],
                [
                  'second',
                  2,
                  2.0,
                  [2, 3, 4]
                ],
              ]);
            });

            test('does not run statements after failure', () async {
              final results = await session.batch((builder) {
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

          // Ensures that requests are buffered against the built-in resource
          // pool to prevent rate limits from the server.
          test('pools requests', () async {
            Future<int> request(int i) async {
              final session = await database.openSession();
              try {
                await session.execute('BEGIN;');
                final result = await session.select('SELECT $i;');
                await session.execute('COMMIT;');
                return result.rows.first.first as int;
              } finally {
                await session.close();
              }
            }

            final requests = <Future<int>>[];
            for (var i = 0; i < 1000; i++) {
              requests.add(request(i));
            }
            expect(
              Future.wait(requests, eagerError: true),
              completion(unorderedEquals(List.generate(1000, (i) => i))),
            );
          });
        });
      }
    }, skip: target == null ? 'Not available' : null);
  }
}

Future<String> _runProcess(String command, List<String> args) async {
  final process = await Process.run(
    command,
    args,
    stdoutEncoding: utf8,
    stderrEncoding: utf8,
    includeParentEnvironment: true,
  );
  if (process.exitCode != 0) {
    throw Exception(
        'Failed to run $command ${args.join(' ')}: ${process.stderr}');
  }
  return (process.stdout as String).trim();
}
