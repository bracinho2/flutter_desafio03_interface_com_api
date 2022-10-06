// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cambona/themes/themes.dart';
import 'package:cambona/widgets/custom_elevated_button.dart';
import 'package:cambona/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/presenter/states/actual_forecast_states.dart';

class ActualForecastSucessWidget extends StatelessWidget {
  final SucessActualForecast state;
  final void Function()? onPressed;
  final Widget city;
  const ActualForecastSucessWidget({
    Key? key,
    required this.state,
    this.onPressed,
    required this.city,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          city,
          CustomTextField(
            text: state.forecast.temperature,
            style: lightTheme.textTheme.labelLarge,
          ),
          CustomTextField(
            text: state.forecast.description,
            style: lightTheme.textTheme.labelMedium,
          ),
          CustomTextField(
            text: state.forecast.wind,
            style: lightTheme.textTheme.labelLarge,
          ),
          SizedBox(
            height: 80,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              clipBehavior: Clip.none,
              shrinkWrap: true,
              itemCount: state.forecast.futureForecast.length,
              itemBuilder: ((context, index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.green,
                      ),
                      width: 90,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '+ ' +
                                state.forecast.futureForecast[index].day +
                                ' Day',
                            style: lightTheme.textTheme.headlineSmall,
                          ),
                          Text(
                            state.forecast.futureForecast[index].temperature,
                            style: lightTheme.textTheme.headlineSmall,
                          ),
                          Text(
                            state.forecast.futureForecast[index].wind,
                            style: lightTheme.textTheme.headlineSmall,
                          ),
                        ],
                      ),
                    ),
                  )),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          CustomElevatedButton(
            onPressed: onPressed,
            label: 'Volver',
          ),
        ],
      ),
    );
  }
}
