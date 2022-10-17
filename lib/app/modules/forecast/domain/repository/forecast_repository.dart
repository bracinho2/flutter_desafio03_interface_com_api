import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/domain/entities/actual_forecast_entity.dart';

abstract class ForecastRepository {
  Future<ActualForecast> call({
    required String value,
  });
}
