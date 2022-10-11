import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/domain/entity/entity_model.dart';
import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/domain/repository/forecast_repository.dart';
import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/domain/usecases/get_forecast.dart';
import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/infra/mappers/mappers.dart';
import 'package:flutter_test/flutter_test.dart';

class ActualForecastMock implements ForecastRepository {
  @override
  Future<ActualForecast> call({required String value}) async {
    final response = dummyData;

    final value = ActualForecastMapper.fromMap(response);

    return value;
  }
}

void main() {
  test('deve voltar uma Previsao do Tempo', () async {
    final useCase = GetForecastImpl(ActualForecastMock());
    final forecast = await useCase.call(value: 'toledo');

    expect(forecast, isNotNull);
    expect(forecast.temperature, equals('+23 °C'));
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
