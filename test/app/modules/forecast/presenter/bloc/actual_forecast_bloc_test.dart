import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/domain/entity/entity_model.dart';
import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/domain/usecases/get_forecast.dart';
import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/presenter/bloc/actual_forecast_bloc.dart';
import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/presenter/events/actual_forecast_events.dart';
import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/presenter/states/actual_forecast_states.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:peabiru/peabiru.dart';

class GetForecastMock extends Mock implements GetForecast {}

void main() {
  late GetForecast usecase;
  late Bloc bloc;

  const city = 'toledo';

  final forecastTest = ActualForecast(
      temperature: "+23 °C",
      wind: "15 km/h",
      description: "Partly cloudy",
      futureForecast: [
        FutureForecast(day: "1", temperature: "+10 °C", wind: "10 km/h"),
        FutureForecast(day: "2", temperature: "+20 °C", wind: "20 km/h"),
        FutureForecast(day: "3", temperature: "+30 °C", wind: "30 km/h"),
      ]);

  setUp(() {
    usecase = GetForecastMock();
    bloc = ActualForecastBloc(usecase);
  });

  test('should not return a bloc null', () {
    when((() => usecase.call(value: city)))
        .thenAnswer((_) async => forecastTest);

    bloc.add(FetchActualForecastEvent(city: city));
    expect(bloc, isNotNull);
  });

  test('should return an bloc instance', () async {
    when((() => usecase.call(value: city)))
        .thenAnswer((_) async => forecastTest);

    bloc.add(FetchActualForecastEvent(city: city));
    expect(bloc, equals(bloc));
  });

  tearDown(() {
    bloc;
    usecase;
  });
}
