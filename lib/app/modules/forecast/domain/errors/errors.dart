abstract class Failure implements Exception {
  String get message;
}

class ConnectionError extends Failure {
  @override
  final String message;
  ConnectionError({
    required this.message,
  });
  @override
  String toString() {
    return 'ConnectionError $message';
  }
}

class HttpClientError extends Failure {
  @override
  final String message;
  HttpClientError({
    required this.message,
  });
  @override
  String toString() {
    return 'ConnectionError $message';
  }
}

class DatasourceError extends Failure {
  @override
  final String message;
  DatasourceError({
    required this.message,
  });
  @override
  String toString() {
    return 'DatasourceError $message';
  }
}

class RepositoryError extends Failure {
  @override
  final String message;
  RepositoryError({
    required this.message,
  });
  @override
  String toString() {
    return 'RepositoryError $message';
  }
}
