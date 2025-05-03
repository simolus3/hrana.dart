import 'package:drift_hrana/drift_hrana.dart';
import 'package:test/test.dart';

import '../example/main.dart';
import 'target_server.dart';

void main() {
  late AppDatabase database;

  for (final (name, target) in targetServers) {
    group(name, skip: target == null ? 'Not available' : null, () {
      late final server = target!;

      setUp(() {
        database = AppDatabase(
          HranaDatabase(server.uri(), jwtToken: server.authToken()),
        );
      });
      tearDown(() async {
        await database.close();
      });

      test('can keep using database after 15 seconds', () async {
        // See https://github.com/tursodatabase/libsql/issues/985
        await database.customSelect('SELECT 1').get();
        await Future<void>.delayed(const Duration(seconds: 15));
        await database.customSelect('SELECT 1').get();
      });
    });
  }
}
