import 'package:flutter_desafio03_interface_com_api/app/core/errors/errors_interface.dart';

class UsecaseError extends Failure {
  @override
  final String message;
  UsecaseError({
    required this.message,
  });
  @override
  String toString() {
    return 'ConnectionError $message';
  }
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
