import 'package:cambona/cambona.dart';
import 'package:flutter/material.dart';
import 'package:flutter_desafio03_interface_com_api/app/core/screen_inteligency/screen_inteligency.dart';
import 'package:peabiru/peabiru.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3)).then((value) {
      Modular.to.pushNamed(
        '/actualForecastPage/',
      ); //(_) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = lightTheme;
    return Scaffold(
      body: Adaptative(
        mobile: Align(
          alignment: Alignment.center,
          child: Stack(
            children: [
              Text(
                'Su',
                style: theme.textTheme.titleLarge,
              ),
              Container(
                padding: const EdgeInsets.only(left: 87),
                child: Text(
                  '\u00A1',
                  style: theme.textTheme.titleMedium,
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(0.0, 100.0, 0.0, 0.0),
                child: Text(
                  'Prognostico',
                  style: theme.textTheme.titleLarge,
                ),
              ),
            ],
          ),
        ),
        desktop: Align(
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Su',
                style: theme.textTheme.titleLarge,
              ),
              Text(
                '\u00A1',
                style: theme.textTheme.titleMedium,
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                'Prognostico',
                style: theme.textTheme.titleLarge,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
