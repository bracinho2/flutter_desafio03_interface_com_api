import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/domain/usecases/get_forecast.dart';
import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/presenter/events/actual_forecast_events.dart';
import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/presenter/states/actual_forecast_states.dart';
import 'package:peabiru/peabiru.dart';

class ActualForecastBloc
    extends Bloc<IActualForecastEvent, IActualForecastState> {
  ActualForecastBloc(
    this._getForecast,
  ) : super(SearchActualForecastState()) {
    on<FetchActualForecastEvent>(_fetchActualForecast);
    on<SearchActualForecastEvent>(_searchActualForecast);
  }

  final GetForecast _getForecast;

  Future<void> _searchActualForecast(
    SearchActualForecastEvent event,
    Emitter<IActualForecastState> emit,
  ) async {
    emit(SearchActualForecastState());
  }

  Future<void> _fetchActualForecast(
    FetchActualForecastEvent event,
    Emitter<IActualForecastState> emit,
  ) async {
    emit(LoadingActualForecastState());
    try {
      final actualForecast = await _getForecast.call(
        value: event.city,
      );
      emit(SucessActualForecast(actualForecast, event.city));
    } catch (e) {
      emit(ErrorActualForecastState(e.toString()));
    }
  }
}
