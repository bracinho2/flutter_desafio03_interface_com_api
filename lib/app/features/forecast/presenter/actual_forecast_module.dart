import 'package:flutter_desafio03_interface_com_api/app/features/forecast/presenter/page/actual_forecast_page.dart';
import 'package:peabiru/peabiru.dart';

class ActualForecastModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: ((context, args) => ActualForecastPage())),
  ];
}
