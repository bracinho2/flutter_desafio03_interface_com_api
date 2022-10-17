import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/domain/entities/actual_forecast_entity.dart';
import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/domain/repository/forecast_repository.dart';

abstract class GetForecast {
  Future<ActualForecast> call({
    required String value,
  });
}

class GetForecastImpl implements GetForecast {
  final ForecastRepository _forecastRepository;

  GetForecastImpl(this._forecastRepository);
  @override
  Future<ActualForecast> call({
    required String value,
  }) async {
    if (value.isEmpty) {
      print('usecase error');
    }

    return await _forecastRepository(value: value);
  }
}
