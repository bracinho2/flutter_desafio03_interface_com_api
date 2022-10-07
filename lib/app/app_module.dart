import 'package:flutter_desafio03_interface_com_api/app/core/core_module.dart';
import 'package:flutter_desafio03_interface_com_api/app/core/pages/splash_page.dart';
import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/presenter/actual_forecast_module.dart';
import 'package:peabiru/peabiru.dart';

class AppModule extends Module {
  @override
  final List<Module> imports = [
    CoreModule(),
    ActualForecastModule(),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      '/',
      child: ((context, args) => const SplashPage()),
    ),
    ModuleRoute(
      '/actualForecastPage/',
      module: ActualForecastModule(),
    ),
  ];
}
