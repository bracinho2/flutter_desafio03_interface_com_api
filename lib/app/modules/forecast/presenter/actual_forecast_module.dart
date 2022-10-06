import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/domain/repository/forecast_repository.dart';
import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/domain/usecases/get_forecast.dart';
import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/external/forecast_datasource_impl.dart';
import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/infra/datasource/datasource.dart';
import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/infra/repository/forecast_repository_impl.dart';
import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/presenter/bloc/actual_forecast_bloc.dart';
import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/presenter/pages/actual_forecast_page.dart';
import 'package:peabiru/peabiru.dart';

class ActualForecastModule extends Module {
  @override
  final List<Bind> binds = [
    //datasource
    Bind.lazySingleton<ForecastDatasource>(
      (i) => ForecastDatasourceImpl(i()),
    ),

    //repository
    Bind.lazySingleton<ForecastRepository>(
      (i) => ForecastRepositoryImpl(i()),
    ),

    //usecase
    Bind.lazySingleton<GetForecast>(
      (i) => GetForecastImpl(i()),
    ),

    Bind.lazySingleton<ActualForecastBloc>((i) => ActualForecastBloc(i()),
        export: false),
  ];

  @override
  final List<ModularRoute> routes = [
    // ChildRoute(
    //   '/',
    //   child: ((context, args) => ActualForecastSearchMobilePage(
    //         bloc: Modular.get<ActualForecastBloc>(),
    //       )),
    // ),
    ChildRoute(
      '/',
      child: ((context, args) => ActualForecastPage(
            bloc: Modular.get<ActualForecastBloc>(),
          )),
    ),
  ];
}
