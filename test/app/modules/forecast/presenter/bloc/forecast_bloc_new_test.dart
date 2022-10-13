import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/domain/entity/entity_model.dart';
import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/domain/usecases/get_forecast.dart';
import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/presenter/bloc/forecast_bloc_new.dart';
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
    bloc = ForecastBloc(usecase);
  });

  test('description', () {
    when((() => usecase.call(value: city)))
        .thenAnswer((_) async => forecastTest);

    bloc.add(ForecastEventFetch(city: city));
    print(bloc.state);
  });

  tearDown(() {
    usecase;
    bloc;
  });
}
