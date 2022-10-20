import 'package:flutter_desafio03_interface_com_api/app/core/errors/errors_interface.dart';

//HTTP CLIENT ERROR
class HttpClientError extends Failure {
  final String errorMessage;
  final dynamic exception;
  final StackTrace? stackTrace;
  final String? label;

  HttpClientError({
    this.errorMessage = 'HttpClient Error',
    this.exception,
    this.stackTrace,
    this.label,
  }) : super(
          stackTrace: stackTrace,
          label: label,
          exception: exception,
        );
}
