import 'package:flutter_desafio03_interface_com_api/app/core/api/forecast_api_paths.dart';
import 'package:flutter_desafio03_interface_com_api/app/core/errors/error_messages.dart';
import 'package:flutter_desafio03_interface_com_api/app/core/http_service/http_service.dart';
import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/domain/errors/errors.dart';
import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/infra/datasource/datasource.dart';
import 'package:peabiru/peabiru.dart';

class ForecastDatasourceImpl implements ForecastDatasource {
  final HttpClient _httpClient;

  const ForecastDatasourceImpl(this._httpClient);
  @override
  Future<Map<String, dynamic>> call({
    required String value,
  }) async {
    try {
      final path = '${URLs.FORECAST_BASE_URL}$value';
      final response = await _httpClient.fetch(path: path);
      return response;
    } on UnoError catch (error, stackTrace) {
      if (error.response!.status == 404) {
        HttpClientError(errorMessage: ErrorMessages.datasourceError404);
      } else if (error.response!.status == 503) {
        HttpClientError(errorMessage: ErrorMessages.datasourceError503);
      }
      throw HttpClientError(
        errorMessage: 'No Internet Connection',
        stackTrace: stackTrace,
        label: 'ForecastDatasourceImpl-ERROR',
      );
    }
  }
}
