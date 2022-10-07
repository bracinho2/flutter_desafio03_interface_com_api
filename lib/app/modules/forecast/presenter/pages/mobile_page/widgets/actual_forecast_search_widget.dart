import 'package:cambona/widgets/custom_elevated_button.dart';
import 'package:cambona/widgets/custom_input_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_desafio03_interface_com_api/app/core/screen_inteligency/screen_inteligency.dart';

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
    final mediaQueryData = MediaQuery.of(context);

    return Align(
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: 400,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                CustomInputTextField(
                  onChanged: onChanged,
                ),
                SizedBox(
                  height: Responsivity.automatic(40, mediaQueryData),
                ),
                CustomElevatedButton(
                  onPressed: onPressed,
                  label: 'Buscar',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
