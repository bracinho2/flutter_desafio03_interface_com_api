abstract class ForecastDatasource {
  Future<Map<String, dynamic>> call({
    required String value,
  });
}
