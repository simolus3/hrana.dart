/// Superclass for all exceptions thrown by `package:hrana`.
///
/// Note that, for invalid usage, subclasses of [Error] may be thrown as well.
/// [HranaException]s indicate failures caused by behavior of the database
/// server.
sealed class HranaException implements Exception {}

/// An exception thrown when a connection has been closed before a response has
/// been received for a request.
final class ConnectionClosed implements HranaException {
  const ConnectionClosed();
}

/// An exception thrown when the libsql server reports an error response for
/// a request.
final class ServerException implements HranaException {
  /// The error message reported from the server.
  final String message;

  /// An optional error code as given by the remote server.
  final String? code;

  ServerException({required this.message, required this.code});

  @override
  String toString() {
    return 'HranaException($code): $message';
  }
}
