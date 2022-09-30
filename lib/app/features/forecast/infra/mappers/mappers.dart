import 'package:flutter_desafio03_interface_com_api/app/features/forecast/domain/entity/entity_model.dart';

class ActualForecastMapper extends ActualForecast {
  ActualForecastMapper({
    required String temperature,
    required String wind,
    required String description,
    required List<FutureForecast> futureForecast,
  }) : super(
            temperature: temperature,
            wind: wind,
            description: description,
            futureForecast: futureForecast);

  factory ActualForecastMapper.fromMap(Map<String, dynamic> map) {
    return ActualForecastMapper(
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

class FutureForecastMapper extends FutureForecast {
  FutureForecastMapper({
    required String day,
    required String temperature,
    required String wind,
  }) : super(
          day,
          temperature,
          wind,
        );

  factory FutureForecastMapper.fromMap(Map<String, dynamic> map) {
    return FutureForecastMapper(
      day: map['day'],
      temperature: map['temperature'],
      wind: map['wind'],
    );
  }
}
