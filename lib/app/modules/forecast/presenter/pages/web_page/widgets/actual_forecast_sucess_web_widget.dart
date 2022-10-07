// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cambona/themes/themes.dart';
import 'package:cambona/widgets/custom_elevated_button.dart';
import 'package:cambona/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/presenter/states/actual_forecast_states.dart';

class ActualForecastSucessWebWidget extends StatelessWidget {
  final SucessActualForecast state;
  final void Function()? onPressed;
  final Widget city;
  const ActualForecastSucessWebWidget({
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  city,
                  CustomTextField(
                    text: state.forecast.description,
                    style: lightTheme.textTheme.labelMedium,
                  ),
                ],
              ),
              SizedBox(
                height: 100,
                width: 150,
                child: VerticalDivider(
                  //indent: 10,
                  endIndent: 20,
                  thickness: 10,
                  color: lightTheme.primaryColor,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomTextField(
                    text: state.forecast.temperature,
                    style: lightTheme.textTheme.displayLarge,
                  ),
                  CustomTextField(
                    text: state.forecast.wind,
                    style: lightTheme.textTheme.labelMedium,
                  ),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
                                state
                                    .forecast.futureForecast[index].temperature,
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
              CustomElevatedButton(
                onPressed: onPressed,
                label: 'Volver',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
