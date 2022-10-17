import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/domain/entities/actual_forecast_entity.dart';

abstract class IActualForecastState {
  const IActualForecastState();
}

class SucessActualForecastState extends IActualForecastState {
  final ActualForecast forecast;
  final String? city;

  const SucessActualForecastState(this.forecast, this.city);
}

class SearchActualForecastState extends IActualForecastState {}

class LoadingActualForecastState extends IActualForecastState {}

class ErrorActualForecastState extends IActualForecastState {
  final String message;
  const ErrorActualForecastState(this.message);
}
