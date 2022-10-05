import 'package:flutter_desafio03_interface_com_api/app/features/forecast/domain/errors/errors.dart';
import 'package:peabiru/peabiru.dart';

abstract class HttpClient {
  Future<Map<String, dynamic>> fetch({
    required String path,
  });
}

class UnoForecastImplementation implements HttpClient {
  final Uno _uno;

  UnoForecastImplementation(this._uno);

  @override
  Future<Map<String, dynamic>> fetch({required String path}) async {
    try {
      final response = await _uno.get(path);

      final value = response.data;

      return value;
    } on UnoError catch (error) {
      throw HttpClientError(
        message: error.message,
      );
    }
  }
}
