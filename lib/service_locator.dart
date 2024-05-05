import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tickets_test_app/common/clients/dio_client/dio_client.dart';
import 'package:tickets_test_app/common/clients/rest_client/rest_client.dart';
import 'package:tickets_test_app/features/tickets_home/bloc/tickets_home_bloc.dart';
import 'package:tickets_test_app/infrastructure/tickets/datasource/tickets_datasource.dart';
import 'package:tickets_test_app/infrastructure/tickets/repository/tickets_repository.dart';

final getIt = GetIt.instance;

Future<void> initLocator() async {
  // Local Storage
  getIt.registerSingletonAsync<SharedPreferences>(
    () async => await SharedPreferences.getInstance(),
  );

  // Api Clients
  getIt.registerLazySingleton<DioClient>(DioClient.new);
  getIt.registerLazySingleton<RestClient>(() => RestClient(getIt<DioClient>().dio));

  // Datasource
  getIt.registerLazySingleton<TicketsDatasource>(() => TicketsDatasourceImpl(getIt()));

  // Repository
  getIt.registerLazySingleton<TicketsRepository>(() => TicketsRepositoryImpl(getIt()));

  // Blocs
  getIt.registerFactory<TicketsHomeBloc>(() => TicketsHomeBloc(getIt()));

  await getIt.allReady();
}
