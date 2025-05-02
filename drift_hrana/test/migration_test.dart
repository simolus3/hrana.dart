import 'dart:convert';

import 'package:drift/drift.dart';
import 'package:drift_hrana/drift_hrana.dart';
import 'package:http/http.dart' as http;
import 'package:test/test.dart';

import '../example/main.dart';
import 'target_server.dart';

void main() {
  final server = withLocalServer();

  test('migrates without pragma user_version', () async {
    final database = _TestMigrationDatabase(
      HranaDatabase(server.uri(), jwtToken: server.authToken()),
      migration: MigrationStrategy(
        onCreate: expectAsync1((m) async {
          await m.createAll();
        }),
      ),
    );
    addTearDown(database.close);

    final version = await database
        .customSelect('SELECT user_version FROM __drift_user_version')
        .getSingle();
    expect(version.read<int>('user_version'), 1);
  });

  test('migrates with pragma user_version', () async {
    final result = await http.post(
      server.uri().replace(path: '/v3/pipeline'),
      body: jsonEncode({
        "requests": [
          {
            "type": "execute",
            "stmt": {"sql": "pragma user_version = 1;"}
          },
          {"type": "close"}
        ]
      }),
    );
    expect(result.statusCode, 200, reason: result.body);

    final database = _TestMigrationDatabase(
      HranaDatabase(server.uri(), jwtToken: server.authToken()),
      migration: MigrationStrategy(
        onUpgrade: expectAsync3((m, from, to) async {
          expect(from, 1);
          expect(to, 2);
        }),
      ),
      schemaVersion: 2,
    );
    addTearDown(database.close);

    final version = await database
        .customSelect('SELECT user_version FROM __drift_user_version')
        .getSingle();
    expect(version.read<int>('user_version'), 2);
  });
}

final class _TestMigrationDatabase extends AppDatabase {
  _TestMigrationDatabase(
    super.e, {
    required this.migration,
    this.schemaVersion = 1,
  });

  @override
  final MigrationStrategy migration;

  @override
  final int schemaVersion;
}
