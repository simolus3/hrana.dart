import 'package:hrana/hrana.dart';
import 'package:test/test.dart';

import 'start_server.dart';

void main() {
  test('closed reports when server closes connection', () async {
    final port = await selectFreePort();
    final server = await startSqld(port);

    final database = await Database.connect(Uri.parse('ws://localhost:$port/'));
    var completed = false;
    final future = database.closed.whenComplete(() => completed = true);

    await database.execute('SELECT 1');
    expect(completed, isFalse);

    server.stop();
    await expectLater(future, completes);

    await expectLater(
        () => database.execute('SELECT 2'), throwsA(isA<ConnectionClosed>()));
    await database.close();
  });
}
