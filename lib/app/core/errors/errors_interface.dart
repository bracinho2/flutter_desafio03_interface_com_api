abstract class Failure implements Exception {
  final String errorMessage;

  Failure({
    this.errorMessage = '',
    StackTrace? stackTrace,
    String? label,
    dynamic exception,
  }) {
    if (stackTrace != null) {
      DebugStack.printError(label: label, stackTrace: stackTrace);
    }
    print('Passou na Failure Principal');
  }
}

class UnknownError extends Failure {
  final String errorMessage;
  final dynamic exception;
  final StackTrace? stackTrace;
  final String? label;

  UnknownError({
    this.errorMessage = 'Unknown Error',
    this.exception,
    this.stackTrace,
    this.label,
  }) : super(
          stackTrace: stackTrace,
          label: label,
          exception: exception,
        );
}

class DebugStack {
  static printError({
    String? label,
    StackTrace? stackTrace,
  }) {
    print(label);
    print(stackTrace);
  }
}
