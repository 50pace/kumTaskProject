import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tasks_project/data/local_data_source/shared_preferences/shared_preferences_manager.dart';
import 'package:tasks_project/data/local_data_source/shared_preferences/shared_preferences_manager_impl.dart';
import 'package:tasks_project/domain/use_case/auth/login_use_case.dart';
import 'package:tasks_project/domain/use_case/tasks/tasks_uce_cases/get_tasks_use_case.dart';
import 'package:tasks_project/presentation/app_coordinator/bloc/app_coordinator_bloc.dart';
import 'package:tasks_project/presentation/auth/auth_bloc/auth_bloc.dart';
import 'package:tasks_project/presentation/auth/login/login_bloc/login_bloc.dart';
import 'package:tasks_project/presentation/auth/registration/registration_bloc/registration_bloc.dart';
import 'package:tasks_project/presentation/common/app_navigation_wrapper/app_navigation_wrapper_bloc/app_navigation_wrapper_bloc.dart';
import 'package:tasks_project/presentation/common/router/tasks_router.dart';
import 'package:tasks_project/presentation/common/router/tasks_router_impl.dart';
import 'package:tasks_project/presentation/create_task/create_task_bloc/create_task_bloc.dart';
import 'package:tasks_project/presentation/edit_task/edit_task_bloc/edit_task_bloc.dart';
import 'package:tasks_project/presentation/tasks/tasks_bloc/tasks_bloc.dart';

final serviceLocator = GetIt.instance;

Future<void> init() async {
  _registerBlocs();
  _registerRouter();
}

T get<T extends Object>() {
  return serviceLocator.get<T>();
}

void _registerBlocs() {

  serviceLocator.registerFactory<AppNavigationWrapperBloc>(() => AppNavigationWrapperBloc(serviceLocator()));
  serviceLocator.registerFactory<AuthBloc>(() => AuthBloc());
  serviceLocator.registerFactory<LoginBloc>(() => LoginBloc(serviceLocator()));
  serviceLocator.registerFactory<RegistrationBloc>(() => RegistrationBloc(serviceLocator()));
  serviceLocator.registerFactory<TasksBloc>(() => TasksBloc(serviceLocator()));
  serviceLocator.registerFactory<CreateTaskBloc>(() => CreateTaskBloc(serviceLocator()));
  serviceLocator.registerFactory<EditTaskBloc>(() => EditTaskBloc(serviceLocator(), serviceLocator()));
  serviceLocator.registerFactory<AppCoordinatorBloc>(() => AppCoordinatorBloc(serviceLocator()));
}

void _registerRouter() {
  serviceLocator.registerLazySingleton<TasksRouter>(
          () => TasksRouterImpl.defaultRouter()
  );
}
