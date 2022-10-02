import 'package:flutter_desafio03_interface_com_api/app/core/pages/splash_page.dart';
import 'package:peabiru/peabiru.dart';

class AppModule extends Module {
  @override
  final List<Module> imports = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: ((context, args) => const SplashPage())),
  ];
}
