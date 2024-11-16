## 0.4.0

- __Breaking__: Move operations into `DatabaseSession` class obtained through
  `Database.withSession`.
  By no longer using long-lived sessions, the client avoids timeouts when
  keeping a database open for a long time.

## 0.3.0

- Support the HTTP protocol for hrana databases.

## 0.2.1

- Lower min SDK version to `3.4.0`.

## 0.2.0

- Add `Database.closed`, a future that completes when the underlying connection
  has closed.

## 0.1.0

Initial version.
