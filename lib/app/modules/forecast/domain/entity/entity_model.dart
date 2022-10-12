class ActualForecast {
  final String temperature;
  final String wind;
  final String description;
  final List<FutureForecast> futureForecast;

  ActualForecast({
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

class FutureForecast {
  final String day;
  final String temperature;
  final String wind;

  FutureForecast({
    required this.day,
    required this.temperature,
    required this.wind,
  });

  @override
  String toString() {
    return 'Future Forecast: Day: $day | Temperature: $temperature | Wind: $wind \n';
  }
}
