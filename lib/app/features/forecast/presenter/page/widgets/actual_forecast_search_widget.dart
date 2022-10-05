import 'package:cambona/widgets/custom_elevated_button.dart';
import 'package:cambona/widgets/custom_input_text_field.dart';
import 'package:flutter/material.dart';

class ActualForecastSearchWidget extends StatelessWidget {
  final void Function()? onPressed;
  final Function(String)? onChanged;
  const ActualForecastSearchWidget({
    Key? key,
    this.onPressed,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
          child: Column(
            children: [
              CustomInputTextField(
                onChanged: onChanged,
              ),
              const SizedBox(
                height: 40.0,
              ),
              CustomElevatedButton(
                onPressed: onPressed,
                label: 'Buscar',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
