This package provides a Dart implementation for the Hrana protocol used by
`libsql` servers to expose sqlite3 databases over web sockets.

## Getting started

To use this package, you need a server to connect to. For testing purposes,
you can start an ephemeral sqld container:

```
docker run -p 8080:8080 -ti -e SQLD_NODE=primary ghcr.io/tursodatabase/libsql-server:latest
```

## Usage

With a running server, all this package needs to connect is the web socket URI
and optionally a JWT token for authorization:

```dart
import 'package:hrana/hrana.dart';

void main() async {
  final database = await Database.connect(
    Uri.parse('ws://localhost:8080/'),
    jwtToken: null,
  );
  print(await database.select('SELECT 1;'));
}
```

## Additional information

At the moment, this package implementats functionality to execute statements
and getting their results as rows.
Batches and stored statements are supported as well, but no support for
streaming cursors is implemented yet.

### Contributing

Contributions to expose more functionality of the hrana protocol are welcome!

If you need to re-run the `protoc` compiler, first run

```
$ dart pub global activate protoc_plugin
```

Afterwards, you can use `./proto.sh` to re-generate protobuf code.
