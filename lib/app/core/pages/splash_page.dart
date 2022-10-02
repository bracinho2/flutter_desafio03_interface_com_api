import 'package:cambona/cambona.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 2)).then(
      (value) => print('Splash'),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = lightTheme;
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Text(
          'Cities Forecast',
          style: theme.textTheme.displayLarge,
        ),
      ),
    );
  }
}
