import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/domain/entities/future_forecast_entity.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  FutureForecast _forecast =
      const FutureForecast(day: "1", temperature: "+10 °C", wind: "10 km/h");

  //inicia teste;
  setUpAll(() {});

  group('Teste de Entidade', () {
    test('combo de testes > se é uma previsao e se não é nula', () {
      expect(
          _forecast,
          allOf([
            isA<FutureForecast>(),
            isNotNull,
          ]));
    });
  });

  //finaliza teste;
  tearDownAll(() {});
}
