import 'package:flutter_desafio03_interface_com_api/app/core/api/forecast_api_paths.dart';
import 'package:flutter_desafio03_interface_com_api/app/core/http_service/uno_http_service_impl.dart';
import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/external/forecast_datasource_impl.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:peabiru/peabiru.dart';

class HttpClientMock extends Mock implements UnoForecastImplementation {}

void main() {
  late HttpClientMock httpClientMock;

  late ForecastDatasourceImpl forecastDatasourceImpl;

  setUp(() {
    httpClientMock = HttpClientMock();
    forecastDatasourceImpl = ForecastDatasourceImpl(httpClientMock);
  });

  const city = 'Toledo';
  test('deve retornar um mapa de qualquer coisa', () async {
    when(
      () => httpClientMock.fetch(path: '${URLs.FORECAST_BASE_URL}$city'),
    ).thenAnswer((_) async => dummyData);

    var forecast = await forecastDatasourceImpl.call(value: city);
    print(forecast);
    expect(forecast['temperature'], '+23 °C');
  });

  tearDown(() {
    httpClientMock;
    forecastDatasourceImpl;
  });
}

final dummyData = {
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
