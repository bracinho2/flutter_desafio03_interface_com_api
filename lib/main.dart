import 'package:flutter/material.dart';
import 'package:flutter_desafio03_interface_com_api/app/app_module.dart';
import 'package:flutter_desafio03_interface_com_api/app/app_widget.dart';
import 'package:peabiru/peabiru.dart';

void main() {
  runApp(
    ModularApp(
      module: AppModule(),
      child: const AppWidget(),
    ),
  );
}


//Modular
//O que ele resolve?
//1. As injeçoes; (Contratos (classes abstratas + injeção))
//2. Rotas de navegação

//MVC + Repository
//view > tela;
//controller > conversa com a tela e com a MODEL e com o repository;
//Repository > converter coisas que vem da API para seu modelo
//Datasource > conversar com a API e enviar as coisas da API para o Repository;

/*

API > Datasource > Repository > Model > controller > tela;

Datasource > qual sua funçao?
1. conversar com HttpClient;
2. conhece o caminho dos dados

Httpclient
1. Sabe buscar;


*/

//Ciclo > tela chama o Controller > controller chama o Respository (aqui quando voltar dados chama o model) > repository chama o datasource que fala coma api.

