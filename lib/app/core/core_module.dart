import 'package:flutter_desafio03_interface_com_api/app/core/http_service/http_service.dart';
import 'package:flutter_desafio03_interface_com_api/app/core/http_service/uno_http_service_impl.dart';
import 'package:peabiru/peabiru.dart';

class CoreModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.factory(
      (i) => Uno(),
      export: true,
    ),
    Bind.singleton<HttpClient>(
      (i) => UnoHttpClientImpl(i()),
      export: true,
    ),
  ];
}
