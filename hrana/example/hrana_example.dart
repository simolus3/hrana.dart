import 'package:hrana/hrana.dart';

void main() async {
  final database = await Database.connect(
    Uri.parse('ws://localhost:8080/'),
    jwtToken: null,
  );
  print('connected!');

  print(await database.select('SELECT 1;'));
}
