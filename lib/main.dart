import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:talker_bloc_logger/talker_bloc_logger_observer.dart';
import 'package:tickets_test_app/app/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = TalkerBlocObserver();
  runApp(const TicketsApp());
}
