// ignore_for_file: unused_import
import 'package:flutter_desafio03_interface_com_api/app/core/core_module.dart';
import 'package:flutter_desafio03_interface_com_api/app/core/http_service/http_service.dart';
import 'package:flutter_desafio03_interface_com_api/app/core/http_service/uno_http_service_impl.dart';
import 'package:flutter_desafio03_interface_com_api/app/core/api/forecast_api_paths.dart';
import 'package:flutter_desafio03_interface_com_api/app/core/pages/splash_page.dart';
import 'package:flutter_desafio03_interface_com_api/app/core/screen_inteligency/screen_inteligency.dart';
import 'package:flutter_desafio03_interface_com_api/app/app_widget.dart';
import 'package:flutter_desafio03_interface_com_api/app/utils/dummy_data.dart';
import 'package:flutter_desafio03_interface_com_api/app/app_module.dart';
import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/infra/datasource/datasource.dart';
import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/infra/repository/forecast_repository_impl.dart';
import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/infra/mappers/mappers.dart';
import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/presenter/bloc/states/actual_forecast_states.dart';
import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/presenter/bloc/events/actual_forecast_events.dart';
import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/presenter/actual_forecast_module.dart';
import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/presenter/pages/web_page/widgets/actual_forecast_search_web_widget.dart';
import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/presenter/pages/web_page/widgets/actual_forecast_sucess_web_widget.dart';
import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/presenter/pages/web_page/widgets/actual_forecast_loading_web_widget.dart';
import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/presenter/pages/web_page/widgets/actual_forecast_error_web_widget.dart';
import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/presenter/pages/web_page/actual_forecast_search_web_page.dart';
import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/presenter/pages/mobile_page/actual_forecast_search_mobile_page.dart';
import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/presenter/pages/mobile_page/widgets/actual_forecast_search_widget.dart';
import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/presenter/pages/mobile_page/widgets/actual_forecast_loading_widget.dart';
import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/presenter/pages/mobile_page/widgets/actual_forecast_error_widget.dart';
import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/presenter/pages/mobile_page/widgets/actual_forecast_sucess_widget.dart';
import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/presenter/pages/actual_forecast_page.dart';
import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/presenter/bloc/actual_forecast_bloc.dart';
import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/external/forecast_datasource_impl.dart';
import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/domain/repository/forecast_repository.dart';
import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/domain/entities/actual_forecast_entity.dart';
import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/domain/errors/errors.dart';
import 'package:flutter_desafio03_interface_com_api/app/modules/forecast/domain/usecases/get_forecast.dart';
import 'package:flutter_desafio03_interface_com_api/main.dart';

void main() {}
