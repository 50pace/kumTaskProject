import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:tasks_project/data/local_data_source/shared_preferences/shared_preferences_manager.dart';
import 'package:tasks_project/data/local_data_source/shared_preferences/shared_preferences_manager_impl.dart';
import 'package:tasks_project/data/remote_data_source/network/data_service.dart';
import 'package:tasks_project/data/remote_data_source/network/data_service_impl.dart';
import 'package:tasks_project/data/remote_data_source/network/network_client.dart';
import 'package:tasks_project/data/remote_data_source/network/network_client_impl.dart';
import 'package:tasks_project/data/repository/auth/auth_repository_impl.dart';
import 'package:tasks_project/data/repository/tasks/tasks_repository_impl.dart';
import 'package:tasks_project/domain/repository/auth/auth_repository.dart';
import 'package:tasks_project/domain/repository/tasks/tasks_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

final serviceLocator = GetIt.instance;

Future<void> init() async {
  await _registerLocalStorage();
  _registerNetworkClients();
  _registerRepositories();

}

T get<T extends Object>() {
  return serviceLocator.get<T>();
}

void _registerNetworkClients() {
  serviceLocator.registerSingleton<Dio>(Dio());
  serviceLocator.registerLazySingleton<NetworkClient>(
          () => NetworkClientImpl(serviceLocator()));
}

void _registerRepositories() {
  serviceLocator.registerSingleton<DataService>(DataServiceImpl(serviceLocator(), serviceLocator()));
  serviceLocator.registerFactory<AuthRepository>(() => AuthRepositoryImpl(serviceLocator(), serviceLocator()));
  serviceLocator.registerFactory<TasksRepository>(() => TasksRepositoryImpl(serviceLocator()));
}

Future<void> _registerLocalStorage() async {
  final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  serviceLocator.registerFactory<SharedPreferencesManager>(
          () => SharedPreferencesManagerImpl(sharedPreferences));
}

