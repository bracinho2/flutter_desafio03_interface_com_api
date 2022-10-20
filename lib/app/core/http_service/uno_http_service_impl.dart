import 'package:flutter_desafio03_interface_com_api/app/core/errors/error_messages.dart';
import 'package:flutter_desafio03_interface_com_api/app/core/http_service/http_service.dart';
import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/domain/errors/errors.dart';
import 'package:peabiru/peabiru.dart';

class UnoHttpClientImpl implements HttpClient {
  final Uno _uno;

  const UnoHttpClientImpl(this._uno);

  @override
  Future<Map<String, dynamic>> fetch({
    required String path,
  }) async {
    try {
      final response = await _uno.get(path);

      final value = response.data;

      return value;
    } on UnoError catch (error, stackTrace) {
      if (error.response!.status == 404) {
        HttpClientError(errorMessage: ErrorMessages.datasourceError404);
      } else if (error.response!.status == 503) {
        HttpClientError(errorMessage: ErrorMessages.datasourceError503);
      }
      throw HttpClientError(
        errorMessage: 'No Internet Connection',
        stackTrace: stackTrace,
        label: 'UnoHttpClientImpl',
      );
    }
  }
}
