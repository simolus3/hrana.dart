import 'dart:convert';
import 'dart:io';

import 'package:docker_process/docker_process.dart';
import 'package:test/test.dart';

import 'start_server.dart';

typedef TargetServer = ({Uri Function() uri, String? Function() authToken});

/// The list of target servers to run the test suite against.
List<(String name, TargetServer?)> get targetServers => [
      ('localhost', withLocalServer()),
      if (Platform.environment['TURSO_API_TOKEN'] case final token?
          when token.isNotEmpty)
        ('turso cloud', withTursoServer())
      else
        ('turso cloud', null),
    ];

TargetServer withLocalServer() {
  late int port;
  late DockerProcess server;

  setUpAll(() async {
    port = await selectFreePort();
    server = await startSqld(port);
  });

  tearDownAll(() async {
    await server.stop();
  });

  return (
    uri: () => Uri.parse('http://localhost:$port/'),
    authToken: () => null,
  );
}

TargetServer withTursoServer() {
  late String databaseName;
  late String databaseUrl;
  late String authToken;

  setUpAll(() async {
    databaseName = 'drift-hrana-test-${DateTime.now().millisecondsSinceEpoch}';
    await _runProcess('turso', ['db', 'create', databaseName]);
    databaseUrl = await _runProcess('turso', [
      'db',
      'show',
      databaseName,
      '--http-url',
    ]);
    authToken = await _runProcess('turso', [
      'db',
      'tokens',
      'create',
      databaseName,
    ]);
  });

  tearDownAll(() async {
    await _runProcess('turso', ['db', 'destroy', '--yes', databaseName]);
  });

  return (
    uri: () => Uri.parse(databaseUrl),
    authToken: () => authToken,
  );
}

Future<String> _runProcess(String command, List<String> args) async {
  final process = await Process.run(
    command,
    args,
    stdoutEncoding: utf8,
    stderrEncoding: utf8,
    includeParentEnvironment: true,
  );
  if (process.exitCode != 0) {
    throw Exception(
        'Failed to run $command ${args.join(' ')}: ${process.stderr}');
  }
  return (process.stdout as String).trim();
}
