import 'package:flutter_desafio03_interface_com_api/app/features/forecast/domain/entity/entity_model.dart';

abstract class IActualForecastState {
  const IActualForecastState();
}

class EmptyActualForecast extends IActualForecastState {}

class LoadingActualForecast extends IActualForecastState {}

class ErrorActualForecast extends IActualForecastState {
  final String message;
  const ErrorActualForecast(this.message);
}

class SucessActualForecast extends IActualForecastState {
  final ActualForecast forecast;
  const SucessActualForecast(this.forecast);
}
