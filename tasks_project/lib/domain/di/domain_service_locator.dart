import 'package:get_it/get_it.dart';
import 'package:tasks_project/domain/repository/auth/auth_repository.dart';
import 'package:tasks_project/domain/repository/tasks/tasks_repository.dart';
import 'package:tasks_project/domain/use_case/auth/login_use_case.dart';
import 'package:tasks_project/domain/use_case/auth/login_use_case_impl.dart';
import 'package:tasks_project/domain/use_case/auth/registration_use_case.dart';
import 'package:tasks_project/domain/use_case/auth/registration_use_case_impl.dart';
import 'package:tasks_project/domain/use_case/tasks/create_task_use_case_impl.dart';
import 'package:tasks_project/domain/use_case/tasks/delete_task_use_case_impl.dart';
import 'package:tasks_project/domain/use_case/tasks/edit_task_use_case_impl.dart';
import 'package:tasks_project/domain/use_case/tasks/get_tasks_use_case_impl.dart';
import 'package:tasks_project/domain/use_case/tasks/tasks_uce_cases/create_task_use_case.dart';
import 'package:tasks_project/domain/use_case/tasks/tasks_uce_cases/delete_task_use_case.dart';
import 'package:tasks_project/domain/use_case/tasks/tasks_uce_cases/edit_task_use_case.dart';
import 'package:tasks_project/domain/use_case/tasks/tasks_uce_cases/get_tasks_use_case.dart';

final serviceLocator = GetIt.instance;

Future<void> init() async {
  _registerUseCases();
}

T get<T extends Object>() {
  return serviceLocator.get<T>();
}

void _registerUseCases() {

  serviceLocator.registerFactory<LoginUseCase>(
          () => LoginUseCaseImpl(serviceLocator())
  );
  serviceLocator.registerFactory<RegistrationUseCase>(
          () => RegistrationUseCaseImpl(serviceLocator())
  );
  serviceLocator.registerFactory<GetTasksUseCase>(
          () => GetTasksUseCaseImpl(serviceLocator())
  );
  serviceLocator.registerFactory<CreateTaskUseCase>(
          () => CreateTaskUseCaseImpl(serviceLocator())
  );
  serviceLocator.registerFactory<EditTaskUseCase>(
          () => EditTaskUseCaseImpl(serviceLocator())
  );
  serviceLocator.registerFactory<DeleteTaskUseCase>(
          () => DeleteTaskUseCaseImpl(serviceLocator())
  );
}
