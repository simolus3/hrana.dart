import 'package:docker_process/docker_process.dart';
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
    database = AppDatabase(HranaDatabase(Uri.parse('http://localhost:$port/')));
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
}
