import 'package:cambona/cambona.dart';
import 'package:flutter/material.dart';
import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/presenter/bloc/actual_forecast_bloc.dart';
import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/presenter/events/actual_forecast_events.dart';
import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/presenter/pages/web_page/widgets/actual_forecast_error_web_widget.dart';
import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/presenter/pages/web_page/widgets/actual_forecast_loading_web_widget.dart';
import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/presenter/pages/web_page/widgets/actual_forecast_search_web_widget.dart';
import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/presenter/pages/web_page/widgets/actual_forecast_sucess_web_widget.dart';
import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/presenter/states/actual_forecast_states.dart';
import 'package:peabiru/peabiru.dart';

class ActualForecastSearchWebPage extends StatefulWidget {
  final ActualForecastBloc bloc;
  const ActualForecastSearchWebPage({
    Key? key,
    required this.bloc,
  }) : super(key: key);

  @override
  State<ActualForecastSearchWebPage> createState() =>
      _ActualForecastSearchWebPageState();
}

class _ActualForecastSearchWebPageState
    extends State<ActualForecastSearchWebPage> {
  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ActualForecastBloc, IActualForecastState>(
        bloc: widget.bloc,
        builder: (context, state) {
          if (state is LoadingActualForecastState) {
            return const ActualForecastLoadingWebWidget();
          }
          if (state is SearchActualForecastState) {
            return ActualForecastSearchWebWidget(
              onChanged: (value) {
                searchController.text = value;
              },
              onPressed: () {
                if (searchController.text.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      backgroundColor: Colors.green,
                      content: Text('Necessitamos el nombre de la ciudad'),
                    ),
                  );
                  return;
                }

                widget.bloc.add(
                  FetchActualForecastEvent(
                    city: searchController.text,
                  ),
                );
              },
            );
          }
          if (state is SucessActualForecast) {
            return ActualForecastSucessWebWidget(
              city: Text(
                searchController.text.toUpperCase(),
                style: lightTheme.textTheme.titleLarge,
              ),
              state: state,
              onPressed: () {
                widget.bloc.add(SearchActualForecastEvent());
              },
            );
          }
          if (state is ErrorActualForecastState) {
            return ActualForecastErrorWebWidget(
              onPressed: () {
                widget.bloc.add(SearchActualForecastEvent());
              },
            );
          }
          return Container();
        },
      ),
    );
  }
}
