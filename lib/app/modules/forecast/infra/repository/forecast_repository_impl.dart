import 'package:flutter_desafio03_interface_com_api/app/core/errors/errors_interface.dart';
import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/domain/entities/actual_forecast_entity.dart';
import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/domain/errors/errors.dart';
import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/domain/repository/forecast_repository.dart';
import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/infra/datasource/datasource.dart';
import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/infra/mappers/mappers.dart';

class ForecastRepositoryImpl implements ForecastRepository {
  final ForecastDatasource _forecastDatasource;

  const ForecastRepositoryImpl(this._forecastDatasource);
  @override
  Future<ActualForecast> call({
    required String value,
  }) async {
    try {
      final response = await _forecastDatasource.call(value: value);
      final forecast = ActualForecastMapper.fromMap(response);
      return forecast;
    } on Failure catch (e) {
      throw RepositoryError(message: 'Repository Error' + e.toString());
    }
  }
}
