import 'package:cambona/cambona.dart';
import 'package:flutter/material.dart';
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

    Future.delayed(const Duration(seconds: 5)).then((value) {
      Modular.to.pushNamedAndRemoveUntil('/actualForecastPage/', (_) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = lightTheme;
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Stack(
          children: [
            Container(
              child: const Text(
                'Hola',
                style: TextStyle(
                  fontSize: 80,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(0.0, 80.0, 0.0, 0.0),
              child: const Text(
                'Que tal',
                style: TextStyle(
                  fontSize: 80,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(250.0, 50.0, 0.0, 0.0),
              child: const Text(
                '\u00A1',
                style: TextStyle(
                  fontSize: 100,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
