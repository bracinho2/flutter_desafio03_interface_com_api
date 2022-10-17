class FutureForecast {
  final String day;
  final String temperature;
  final String wind;

  const FutureForecast({
    required this.day,
    required this.temperature,
    required this.wind,
  });

  @override
  String toString() {
    return 'Future Forecast: Day: $day | Temperature: $temperature | Wind: $wind \n';
  }
}
