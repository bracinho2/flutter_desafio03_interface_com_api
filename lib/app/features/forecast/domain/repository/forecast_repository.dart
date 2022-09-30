import 'package:flutter_desafio03_interface_com_api/app/features/forecast/domain/entity/entity_model.dart';

abstract class ForecastRepository {
  Future<ActualForecast> call({
    required String value,
  });
}
