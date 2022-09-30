import 'package:flutter_desafio03_interface_com_api/app/features/forecast/domain/entity/entity_model.dart';
import 'package:flutter_desafio03_interface_com_api/app/features/forecast/domain/repository/forecast_repository.dart';

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
    return await _forecastRepository(value: value);
  }
}
