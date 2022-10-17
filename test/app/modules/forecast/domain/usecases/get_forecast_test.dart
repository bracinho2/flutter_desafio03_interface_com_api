import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/domain/entities/actual_forecast_entity.dart';
import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/domain/entities/future_forecast_entity.dart';
import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/domain/repository/forecast_repository.dart';
import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/domain/usecases/get_forecast.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:peabiru/peabiru.dart';

class ForecastRepositoryMock extends Mock implements ForecastRepository {}

void main() {
  late ForecastRepository forecastRepository;
  late GetForecast usecase;

  const city = 'toledo';

  const forecastTest = ActualForecast(
      temperature: "+23 °C",
      wind: "15 km/h",
      description: "Partly cloudy",
      futureForecast: [
        FutureForecast(day: "1", temperature: "+10 °C", wind: "10 km/h"),
        FutureForecast(day: "2", temperature: "+20 °C", wind: "20 km/h"),
        FutureForecast(day: "3", temperature: "+30 °C", wind: "30 km/h"),
      ]);

  setUp(() {
    forecastRepository = ForecastRepositoryMock();
    usecase = GetForecastImpl(forecastRepository);
  });

  test('should current weather not null', () async {
    when(() => forecastRepository.call(value: city))
        .thenAnswer((_) async => forecastTest);

    final result = await usecase.call(value: city);

    expect(result, equals(forecastTest));
  });

  test('should get current weather from the repository', () async {
    when(() => forecastRepository.call(value: city))
        .thenAnswer((_) async => forecastTest);

    final result = await usecase.call(value: city);

    expect(result, isNotNull);
  });

  test('should get current weather temperature', () async {
    when(() => forecastRepository.call(value: city))
        .thenAnswer((_) async => forecastTest);

    final result = await usecase.call(value: city);

    expect(result.temperature, equals('+23 °C'));
  });

  tearDown(() {
    forecastRepository;
    usecase;
  });
}
