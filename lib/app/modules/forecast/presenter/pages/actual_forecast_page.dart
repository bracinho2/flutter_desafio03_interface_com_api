import 'package:flutter/material.dart';
import 'package:flutter_desafio03_interface_com_api/app/core/screen_inteligency/screen_inteligency.dart';
import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/presenter/bloc/actual_forecast_bloc.dart';
import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/presenter/pages/mobile_page/actual_forecast_search_mobile_page.dart';
import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/presenter/pages/web_page/actual_forecast_search_web_page.dart';

class ActualForecastPage extends StatelessWidget {
  final ActualForecastBloc bloc;
  const ActualForecastPage({
    Key? key,
    required this.bloc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Adaptative(
      mobile: ActualForecastSearchMobilePage(
        bloc: bloc,
      ),
      desktop: ActualForecastSearchWebPage(
        bloc: bloc,
      ),
    );
  }
}
