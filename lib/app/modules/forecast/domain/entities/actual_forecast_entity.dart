import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/domain/entities/future_forecast_entity.dart';

class ActualForecast {
  final String temperature;
  final String wind;
  final String description;
  final List<FutureForecast> futureForecast;

  const ActualForecast({
    required this.temperature,
    required this.wind,
    required this.description,
    required this.futureForecast,
  });

  @override
  String toString() {
    return 'Actual Forecast: Temperature: $temperature | Wind: $wind | Description: $description';
  }
}
