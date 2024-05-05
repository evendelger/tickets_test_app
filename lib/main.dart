import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:talker_bloc_logger/talker_bloc_logger_observer.dart';
import 'package:tickets_test_app/app/app.dart';
import 'package:tickets_test_app/service_locator.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Bloc.observer = TalkerBlocObserver();
  await initLocator();
  // вместо локализации всего приложения инициализирую локаль только
  // для форматирования дат
  await initializeDateFormatting('ru');

  runApp(const TicketsApp());
}
