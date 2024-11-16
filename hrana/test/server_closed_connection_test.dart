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

    final longLivedSession = await database.openSession();

    await database.withSession((session) async {
      await session.execute('SELECT 1');
    });
    expect(completed, isFalse);

    server.stop();
    await expectLater(future, completes);
    await expectLater(longLivedSession.closed, completes);

    await expectLater(
      () => database.withSession(
        (session) async {
          await session.execute('SELECT 2');
        },
      ),
      throwsA(isA<ConnectionClosed>()),
    );
    await database.close();
  });
}
