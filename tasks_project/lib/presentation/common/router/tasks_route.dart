import 'package:tasks_project/presentation/app_coordinator/app_coordinator.dart';
import 'package:tasks_project/presentation/auth/auth_screen.dart';
import 'package:tasks_project/presentation/common/app_navigation_wrapper/app_navigation_wrapper.dart';
import 'package:tasks_project/presentation/create_task/create_task.dart';
import 'package:tasks_project/presentation/edit_task/edit_task.dart';
import 'package:tasks_project/presentation/tasks/tasks_in_progress.dart';

enum TasksRoute {
  appCoordinator(AppCoordinatorScreen),
  auth(AuthScreen),
  bottomNavigation(AppNavigationWrapper),
  createTask(CreateTask),
  tasksInProgress(TasksInProgress),
  editTask(EditTask);

  const TasksRoute(this._routeType);

  static const String _slash = "/";

  final Type _routeType;

  String get path {
    return "$_slash$routeName";
  }

  String get routeName => "$_routeType";
}
