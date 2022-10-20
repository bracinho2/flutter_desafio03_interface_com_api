import 'package:flutter_desafio03_interface_com_api/app/core/errors/errors_interface.dart';

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
