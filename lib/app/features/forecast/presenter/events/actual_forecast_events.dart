abstract class IActualForecastEvent {}

class FetchActualForecastEvent extends IActualForecastEvent {
  final String city;

  FetchActualForecastEvent({
    required this.city,
  });
}

class EmptyActualForecastEvent extends IActualForecastEvent {}
