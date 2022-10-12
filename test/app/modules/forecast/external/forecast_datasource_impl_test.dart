import 'package:flutter_desafio03_interface_com_api/app/core/http_service/uno_http_service_impl.dart';
import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/external/forecast_datasource_impl.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:peabiru/peabiru.dart';

class UnoMock extends Mock implements Uno {}

void main() {
  late UnoMock unoMock;
  late ForecastDatasourceImpl forecastDatasourceImpl;

  setUp(() {
    unoMock = UnoMock();
    forecastDatasourceImpl =
        ForecastDatasourceImpl(UnoForecastImplementation(unoMock));
  });
  test('deve retornar uma lista de qualquer coisa', () async {
    when(() => unoMock.get(any())).thenAnswer(
      (_) async => Response(
        data: dummyData,
        headers: {},
        request: Request(
          headers: {},
          method: '',
          timeout: const Duration(seconds: 2),
          uri: Uri(),
        ),
        status: 200,
      ),
    );

    var forecast = await forecastDatasourceImpl.call(value: 'value');
    expect(forecast['temperature'], '+23 °C');
  });

  tearDown(() {
    unoMock;
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
