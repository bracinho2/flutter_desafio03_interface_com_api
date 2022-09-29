import 'package:flutter_desafio03_interface_com_api/app/core/api/forecast_api_paths.dart';
import 'package:peabiru/peabiru.dart';

abstract class HttpClient {
  Future<Map<String, dynamic>> fetch();
}

class UnoForecastImplementation implements HttpClient {
  final Uno uno;

  UnoForecastImplementation(this.uno);
  @override
  Future<Map<String, dynamic>> fetch() async {
    final response = await uno.get(URLs.FORECAST_BASE_URL);

    final value = response.data;

    return value;
  }
}
