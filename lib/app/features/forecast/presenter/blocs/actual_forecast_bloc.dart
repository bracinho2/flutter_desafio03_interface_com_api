import 'package:peabiru/peabiru.dart';
import 'package:flutter_desafio03_interface_com_api/app/features/forecast/domain/usecases/get_forecast.dart';
import 'package:flutter_desafio03_interface_com_api/app/features/forecast/presenter/events/actual_forecast_events.dart';
import 'package:flutter_desafio03_interface_com_api/app/features/forecast/presenter/states/actual_forecast_states.dart';

class ActualForecastBloc
    extends Bloc<IActualForecastEvent, IActualForecastState> {
  ActualForecastBloc(
    this._getForecast,
  ) : super(EmptyActualForecast()) {
    on<FetchActualForecastEvent>(_fetchActualForecast);
  }

  final GetForecast _getForecast;

  Future<void> _fetchActualForecast(
    FetchActualForecastEvent event,
    Emitter<IActualForecastState> emit,
  ) async {
    emit(LoadingActualForecast());
    try {
      final actualForecast = await _getForecast.call(
        value: event.city,
      );
      emit(SucessActualForecast(actualForecast));
    } catch (e) {
      emit(ErrorActualForecast(e.toString()));
    }
  }
}
