import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/domain/repository/forecast_repository.dart';
import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/infra/datasource/datasource.dart';
import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/infra/repository/forecast_repository_impl.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:peabiru/peabiru.dart';

class ForecastDataSourceMock extends Mock implements ForecastDatasource {}

void main() {
  late ForecastDatasource forecastDatasource;
  late ForecastRepository forecastRepository;

  setUp(() {
    forecastDatasource = ForecastDataSourceMock();
    forecastRepository = ForecastRepositoryImpl(forecastDatasource);
  });

  const city = 'toledo';

  const dummyData = {
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

  test('should current weather not null', () async {
    when(
      () => forecastDatasource.call(value: city),
    ).thenAnswer((_) async => dummyData);

    final response = await forecastRepository.call(value: city);
    expect(response, isNotNull);
  });

  test('should current map equals dummy data', () async {
    when(
      () => forecastDatasource.call(value: city),
    ).thenAnswer((_) async => dummyData);

    final response = await forecastRepository.call(value: city);
    expect(response, dummyData);
  });

  test('should current temperature from map equals any', () async {
    when(
      () => forecastDatasource.call(value: city),
    ).thenAnswer((_) async => dummyData);

    final response = await forecastRepository.call(value: city);
    expect(response.temperature, '+23 °C');
  });

  tearDown(() {
    forecastDatasource;
    forecastRepository;
  });
}
