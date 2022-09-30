import 'package:flutter_desafio03_interface_com_api/app/core/api/forecast_api_paths.dart';
import 'package:flutter_desafio03_interface_com_api/app/core/http_service/http_service.dart';
import 'package:flutter_desafio03_interface_com_api/app/features/forecast/domain/errors/errors.dart';
import 'package:flutter_desafio03_interface_com_api/app/features/forecast/infra/datasource/datasource.dart';

class ForecastDatasourceImpl implements ForecastDatasource {
  final HttpClient _httpClient;

  ForecastDatasourceImpl(this._httpClient);
  @override
  Future<Map<String, dynamic>> call({
    required String value,
  }) async {
    try {
      final path = '${URLs.FORECAST_BASE_URL}$value';
      final response = await _httpClient.fetch(path: path);
      return response;
    } on HttpClientError catch (error) {
      throw DatasourceError(message: 'Erro de Datasource');
    }
  }
}
