import 'package:flutter_desafio03_interface_com_api/app/features/forecast/domain/entity/entity_model.dart';

abstract class IActualForecastState {
  const IActualForecastState();
}

class SearchActualForecastState extends IActualForecastState {}

class LoadingActualForecastState extends IActualForecastState {}

class ErrorActualForecastState extends IActualForecastState {
  final String message;
  const ErrorActualForecastState(this.message);
}

class SucessActualForecast extends IActualForecastState {
  final ActualForecast forecast;
  const SucessActualForecast(this.forecast);
}
