import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/domain/entities/actual_forecast_entity.dart';

import '../../domain/entities/future_forecast_entity.dart';

class ActualForecastMapper {
  static fromMap(Map<String, dynamic> map) {
    return ActualForecast(
      temperature: map['temperature'],
      wind: map['wind'],
      description: map['description'],
      futureForecast: (map['forecast'] as List)
          .map<FutureForecast>(
              (forecast) => FutureForecastMapper.fromMap(forecast))
          .toList(),
    );
  }
}

class FutureForecastMapper {
  static fromMap(Map<String, dynamic> map) {
    return FutureForecast(
      day: map['day'],
      temperature: map['temperature'],
      wind: map['wind'],
    );
  }
}
