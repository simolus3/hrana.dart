![Hrana Version](https://img.shields.io/pub/v/hrana)
![Drift Hrana Version](https://img.shields.io/pub/v/drift_hrana)

This repository contains Dart clients for the [Hrana][hrana] protocol used by
`sqld`, a database server based on the sqlite3 fork `libsql`.

Currently, this includes two packages:

- `package:hrana`: Supports connecting to remote database servers with the
  hrana protocol as well as executing queries.
- `package:drift_hrana`: Wraps the `hrana` package to implement the
  `QueryExecutor` interface from drift, allowing remote libsql databases to be
  used with drift.

[hrana]: https://github.com/tursodatabase/libsql/blob/main/docs/HRANA_3_SPEC.md
