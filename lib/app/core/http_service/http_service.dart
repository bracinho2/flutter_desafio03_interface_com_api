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
      // final response = await _uno.get(path);

      // final value = response.data;

      final values = {
        "temperature": "+23 °C",
        "wind": "15 km/h",
        "description": "Partly cloudy",
        "forecast": [
          {
            "day": "1",
            "temperature": "25 °C",
            "wind": "9 km/h",
          },
          {
            "day": "2",
            "temperature": "+27 °C",
            "wind": "13 km/h",
          },
          {
            "day": "3",
            "temperature": "+29 °C",
            "wind": "12 km/h",
          }
        ]
      };

      return values;
    } on UnoError catch (error) {
      throw HttpClientError(
        message: error.message,
      );
    }
  }
}
