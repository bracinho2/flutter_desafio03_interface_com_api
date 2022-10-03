import 'package:peabiru/peabiru.dart';

import 'package:flutter_desafio03_interface_com_api/app/features/forecast/domain/usecases/get_forecast.dart';
import 'package:flutter_desafio03_interface_com_api/app/features/forecast/presenter/events/actual_forecast_events.dart';
import 'package:flutter_desafio03_interface_com_api/app/features/forecast/presenter/states/actual_forecast_states.dart';

class ActualForecast extends Bloc<IActualForecastEvent, IActualForecastState> {
  ActualForecast(
    this._getForecast,
  ) : super(EmptyActualForecast()) {
    on<FetchActualForecastEvent>(_fetchActualForecast);
  }

  final GetForecast _getForecast;

  Future<void> _fetchActualForecast(FetchActualForecastEvent event,
      Emitter<IActualForecastState> emit) async {
    emit(LoadingActualForecast());
    try {
      final actualForecast = await _getForecast.call(value: 'Toledo');
      emit(SucessActualForecast(actualForecast));
    } catch (e) {
      emit(ErrorActualForecast(e.toString()));
    }
  }
}
