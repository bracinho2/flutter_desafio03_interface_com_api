import 'package:flutter/material.dart';
import 'package:flutter_desafio03_interface_com_api/app/features/forecast/presenter/bloc/actual_forecast_bloc.dart';
import 'package:flutter_desafio03_interface_com_api/app/features/forecast/presenter/events/actual_forecast_events.dart';
import 'package:flutter_desafio03_interface_com_api/app/features/forecast/presenter/page/widgets/actual_forecast_error_widget.dart';
import 'package:flutter_desafio03_interface_com_api/app/features/forecast/presenter/page/widgets/actual_forecast_loading_widget.dart';
import 'package:flutter_desafio03_interface_com_api/app/features/forecast/presenter/page/widgets/actual_forecast_search_widget.dart';
import 'package:flutter_desafio03_interface_com_api/app/features/forecast/presenter/page/widgets/actual_forecast_sucess_widget.dart';
import 'package:flutter_desafio03_interface_com_api/app/features/forecast/presenter/states/actual_forecast_states.dart';
import 'package:peabiru/peabiru.dart';

class ActualForecastSearchPage extends StatefulWidget {
  final ActualForecastBloc bloc;
  const ActualForecastSearchPage({
    Key? key,
    required this.bloc,
  }) : super(key: key);

  @override
  State<ActualForecastSearchPage> createState() =>
      _ActualForecastSearchPageState();
}

class _ActualForecastSearchPageState extends State<ActualForecastSearchPage> {
  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ActualForecastBloc, IActualForecastState>(
        bloc: widget.bloc,
        builder: (context, state) {
          if (state is LoadingActualForecastState) {
            return const ActualForecastLoadingWidget();
          }
          if (state is SearchActualForecastState) {
            return ActualForecastSearchWidget(
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
                searchController.clear();
              },
            );
          }
          if (state is SucessActualForecast) {
            return ActualForecastSucessWidget(
              state: state,
              onPressed: () {
                widget.bloc.add(SearchActualForecastEvent());
              },
            );
          }
          if (state is ErrorActualForecastState) {
            return ActualForecastErrorWidget(
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
