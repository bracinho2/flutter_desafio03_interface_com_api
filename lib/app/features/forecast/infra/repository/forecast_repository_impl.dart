import 'package:flutter_desafio03_interface_com_api/app/features/forecast/domain/entity/entity_model.dart';
import 'package:flutter_desafio03_interface_com_api/app/features/forecast/domain/errors/errors.dart';
import 'package:flutter_desafio03_interface_com_api/app/features/forecast/domain/repository/forecast_repository.dart';
import 'package:flutter_desafio03_interface_com_api/app/features/forecast/infra/datasource/datasource.dart';
import 'package:flutter_desafio03_interface_com_api/app/features/forecast/infra/mappers/mappers.dart';

class ForecastRepositoryImpl implements ForecastRepository {
  final ForecastDatasource _forecastDatasource;

  ForecastRepositoryImpl(this._forecastDatasource);
  @override
  Future<ActualForecast> call({
    required String value,
  }) async {
    try {
      final response = await _forecastDatasource.call(value: value);
      final forecast = ActualForecastMapper.fromMap(response);
      return forecast;
    } on DatasourceError catch (e) {
      throw RepositoryError(message: 'Repository Error' + e.toString());
    }
  }
}
