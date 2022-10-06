import 'package:cambona/cambona.dart';
import 'package:flutter/material.dart';

class ActualForecastErrorWebWidget extends StatelessWidget {
  final void Function()? onPressed;
  const ActualForecastErrorWebWidget({
    Key? key,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Ooops!',
            style: lightTheme.textTheme.titleLarge,
          ),
          const SizedBox(
            height: 10,
          ),
          CustomElevatedButton(
            label: 'volver',
            onPressed: onPressed,
          ),
        ],
      ),
    );
  }
}
