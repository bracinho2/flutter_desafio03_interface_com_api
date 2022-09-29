abstract class HttpClient {
  Future<Map<String, dynamic>> fetch();
}

class UnoForecastImplementation implements HttpClient {
  final Uno uno;

  UnoForecastImplementation(this.uno);
  @override
  Future<Map<String, dynamic>> fetch() async {
    final response = await uno.get(URLs.API_FORECAST);

    final value = response.data;

    return value;
  }
}
