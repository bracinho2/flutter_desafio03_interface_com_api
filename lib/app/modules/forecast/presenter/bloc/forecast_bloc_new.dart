import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/domain/entity/entity_model.dart';
import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/domain/usecases/get_forecast.dart';
import 'package:peabiru/peabiru.dart';

class ForecastBloc extends Bloc<ForecastEvent, ForecastState> {
  final GetForecast _getForecast;
  ForecastBloc(this._getForecast) : super(ForecastSearchState());

  Stream<ForecastState> mapEventToState(ForecastEvent event) async* {
    if (event is SearchActualForecastEvent) {
      yield ForecastSearchState();
    } else if (event is ForecastEventFetch) {
      yield ForecastLoadingState();
      try {
        final actualForecast = await _getForecast.call(value: 'value');
        yield ForecastSucessState(actualForecast);
      } catch (e) {
        yield ForecastErrorState(e);
      }
    }
  }
}

abstract class ForecastEvent {}

class ForecastEventFetch extends ForecastEvent {
  final String city;

  ForecastEventFetch({
    required this.city,
  });
}

class SearchActualForecastEvent extends ForecastEvent {}

abstract class ForecastState {}

class ForecastSucessState extends ForecastState {
  final ActualForecast actualForecast;

  ForecastSucessState(this.actualForecast);
}

class ForecastLoadingState extends ForecastState {}

class ForecastSearchState extends ForecastState {}

class ForecastErrorState extends ForecastState {
  final dynamic error;

  ForecastErrorState([this.error]);
}
