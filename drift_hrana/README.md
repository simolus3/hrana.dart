![Drift Hrana Version](https://img.shields.io/pub/v/drift_hrana)

This package wraps `package:hrana` to access remote libsql or Turso
databases from [drift](https://drift.simonbinder.eu), a database library
for Dart and Flutter applications.

To use this package, you need to run an sqld server somewhere, e.g. with

```
docker run -p 8080:8080 -ti -e SQLD_NODE=primary ghcr.io/tursodatabase/libsql-server:latest
```

Then, the `HranaDatabase` class from `package:drift_hrana/drift_hrana.dart` can
be used to connect your database to such a server:

```dart
import 'package:drift/drift.dart';
import 'package:drift_hrana/drift_hrana.dart';

@DriftDatabase(...)
class AppDatabase extends _$AppDatabase {
  AppDatabase(super.e);

  @override
  int get schemaVersion => 1;
}

void main() async {
  final database = AppDatabase(HranaDatabase(
    Uri.parse('ws://localhost:8080/'),
    jwtToken: null,
  ));
}
```
