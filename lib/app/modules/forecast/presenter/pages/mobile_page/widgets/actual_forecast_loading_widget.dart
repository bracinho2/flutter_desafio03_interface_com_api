import 'package:flutter/material.dart';

class ActualForecastLoadingWidget extends StatelessWidget {
  const ActualForecastLoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
