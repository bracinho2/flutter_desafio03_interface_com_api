//meta dados;
//demorar 20 segundos;

//todos estas marcações podem ser postas em cada teste;

//comando para rodar
//flutter test -x web //ignora quem tiver tag web
//flutter test -p chrome -t web

//@Timeout(Duration(seconds: 20))

//pular teste nao terminado;
//@Skip('ainda nao terminada')

//tags para marcar
//@Tags(['web'])

import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/domain/entity/entity_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  ActualForecast _forecast = ActualForecast(
      temperature: "+23 °C",
      wind: "15 km/h",
      description: "Partly cloudy",
      futureForecast: [
        FutureForecast("1", "+10 °C", "10 km/h"),
        FutureForecast("2", "+20 °C", "20 km/h"),
        FutureForecast("3", "+30 °C", "30 km/h"),
      ]);

  //inicia teste;
  setUpAll(() {
    print('Inicia o teste');
  });

  group('Teste de Entidade', () {
    test('combo de testes > se é uma previsao e se não é nula', () {
      expect(
          _forecast,
          allOf([
            isA<ActualForecast>(),
            isNotNull,
          ]));
    });
  });

  //finaliza teste;
  tearDownAll(() {
    print('Finaliza o teste');
  });
}
