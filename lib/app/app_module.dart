import 'package:flutter_desafio03_interface_com_api/app/core/pages/splash_page.dart';
import 'package:flutter_desafio03_interface_com_api/app/features/forecast/presenter/actual_forecast_module.dart';
import 'package:peabiru/peabiru.dart';

class AppModule extends Module {
  @override
  final List<Module> imports = [
    ActualForecastModule(),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: ((context, args) => const SplashPage())),
    ModuleRoute('/actualForecastPage/', module: ActualForecastModule()),
  ];
}
