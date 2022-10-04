import 'package:cambona/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_desafio03_interface_com_api/app/features/forecast/presenter/blocs/actual_forecast_bloc.dart';
import 'package:flutter_desafio03_interface_com_api/app/features/forecast/presenter/events/actual_forecast_events.dart';
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
          if (state is LoadingActualForecast) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is ErrorActualForecast) {
            return const Center(
              child: Text('Ooops!'),
            );
          }
          if (state is EmptyActualForecast) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding:
                      const EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
                  child: Column(
                    children: [
                      TextFormField(
                        controller: searchController,
                        style: const TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                        ),
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.only(
                            bottom: 10,
                            top: 30,
                          ),
                          isDense: true,
                          labelText: 'Ciudad',
                          labelStyle: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.green,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 40.0,
                      ),
                      ElevatedButton(
                        style: lightTheme.elevatedButtonTheme.style,
                        onPressed: () {
                          if (searchController.text.isEmpty) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content:
                                    Text('Necessitamos el nombre de la ciudad'),
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
                        child: const Text('Buscar'),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }
          if (state is SucessActualForecast) {
            return Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    state.forecast.temperature,
                    style: const TextStyle(
                      fontSize: 80,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  Text(
                    state.forecast.description,
                    style: const TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat',
                      color: Colors.green,
                    ),
                  ),
                  Text(
                    state.forecast.wind,
                    style: const TextStyle(
                      fontSize: 80,
                      fontWeight: FontWeight.bold,
                    ),
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
                                        state.forecast.futureForecast[index]
                                            .day +
                                        ' Day',
                                    style: const TextStyle(
                                      fontFamily: 'ROBOTO',
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    state.forecast.futureForecast[index]
                                        .temperature,
                                    style: const TextStyle(
                                      fontFamily: 'ROBOTO',
                                      fontSize: 15,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    state.forecast.futureForecast[index].wind,
                                    style: const TextStyle(
                                      fontFamily: 'ROBOTO',
                                      fontSize: 15,
                                      color: Colors.black,
                                    ),
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
                  ElevatedButton(
                    style: lightTheme.elevatedButtonTheme.style,
                    onPressed: () {
                      widget.bloc.add(EmptyActualForecastEvent());
                    },
                    child: const Text('Volver'),
                  ),
                ],
              ),
            );
          }

          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding:
                    const EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
                child: Column(
                  children: [
                    TextFormField(
                      controller: searchController,
                      style: const TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                      ),
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.only(
                          bottom: 10,
                          top: 30,
                        ),
                        isDense: true,
                        labelText: 'Ciudad',
                        labelStyle: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.green,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                    ElevatedButton(
                      style: lightTheme.elevatedButtonTheme.style,
                      onPressed: () {
                        if (searchController.text.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content:
                                  Text('Necessitamos el nombre de la ciudad'),
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
                      child: const Text('Buscar'),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
