import 'package:drift_hrana/drift_hrana.dart';
import 'package:hrana/hrana.dart';
import 'package:test/test.dart';

import '../example/main.dart';
import 'start_server.dart';

void main() {
  test('throws exception when connection is closed', () async {
    final port = await selectFreePort();
    final server = await startSqld(port);

    final database =
        AppDatabase(HranaDatabase(Uri.parse('ws://localhost:$port/')));

    await database.customStatement('SELECT 1');

    await server.stop();

    await expectLater(() => database.customStatement('SELECT 2'),
        throwsA(isA<ConnectionClosed>()));
    await database.close();
  });
}
