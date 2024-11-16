import 'package:hrana/hrana.dart';

void main() async {
  // To run this example, try
  // docker run -p 8080:8080 -ti -e SQLD_NODE=primary ghcr.io/tursodatabase/libsql-server:latest
  final database = await Database.connect(
    Uri.parse('ws://localhost:8080/'),
    jwtToken: null,
  );
  print('connected!');

  print(await database
      .withSession((session) async => await session.select('SELECT 1;')));

  await database.close();
}
