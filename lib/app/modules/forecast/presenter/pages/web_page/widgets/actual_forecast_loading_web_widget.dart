import 'package:flutter/material.dart';

class ActualForecastLoadingWebWidget extends StatelessWidget {
  const ActualForecastLoadingWebWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
