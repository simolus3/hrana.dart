import 'package:drift/drift.dart';
import 'package:drift_hrana/drift_hrana.dart';

part 'main.g.dart';

class Notes extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get content => text()();
}

@DriftDatabase(tables: [Notes])
class AppDatabase extends _$AppDatabase {
  AppDatabase(super.e);

  @override
  int get schemaVersion => 1;
}

void main() async {
  final database =
      AppDatabase(HranaDatabase(Uri.parse('ws://localhost:8080/')));

  final note = await database.notes.insertReturning(
      NotesCompanion.insert(content: 'hello from the other side?'));
  print('inserted note: $note');
}
