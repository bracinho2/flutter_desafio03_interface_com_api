import 'package:cambona/cambona.dart';
import 'package:flutter/material.dart';
import 'package:flutter_desafio03_interface_com_api/app/core/screen_inteligency/screen_inteligency.dart';

class ActualForecastErrorWebWidget extends StatelessWidget {
  final void Function()? onPressed;
  const ActualForecastErrorWebWidget({
    Key? key,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Ooops!',
            style: lightTheme.textTheme.titleLarge,
          ),
          SizedBox(
            height: Responsivity.automatic(10, mediaQueryData),
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
