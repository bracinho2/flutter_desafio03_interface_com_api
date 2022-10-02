import 'package:flutter/material.dart';
import 'package:peabiru/peabiru.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
    );
  }
}
