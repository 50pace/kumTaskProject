import 'package:go_router/go_router.dart';
import 'package:tasks_project/domain/entities/task/task.dart';
import 'package:tasks_project/presentation/app_coordinator/app_coordinator.dart';
import 'package:tasks_project/presentation/auth/auth_screen.dart';
import 'package:tasks_project/presentation/common/app_navigation_wrapper/app_navigation_wrapper.dart';
import 'package:tasks_project/presentation/common/router/tasks_route.dart';
import 'package:tasks_project/presentation/common/router/tasks_router.dart';
import 'package:tasks_project/presentation/create_task/create_task.dart';
import 'package:tasks_project/presentation/edit_task/edit_task.dart';
import 'package:tasks_project/presentation/tasks/tasks_in_progress.dart';

class TasksRouterImpl implements TasksRouter {
  late final GoRouter _router;

  TasksRouterImpl(this._router);

  TasksRouterImpl.defaultRouter() {
    _router = GoRouter(routes: [
      _appCoordinatorRoute(),
      _bottomNavigationRoute(),
      _authRoute(),
      _createTaskRoute(),
      _tasksInProgressRoute(),
      _editTaskRoute(),
    ], initialLocation: TasksRoute.appCoordinator.path);
  }

  @override
  GoRouter getRouter() => _router;

  RouteBase _appCoordinatorRoute() => GoRoute(
        name: TasksRoute.appCoordinator.routeName,
        path: TasksRoute.appCoordinator.path,
        builder: (_, __) => const AppCoordinatorScreen(),
      );

  RouteBase _authRoute() => GoRoute(
        name: TasksRoute.auth.routeName,
        path: TasksRoute.auth.path,
        builder: (_, __) => AuthScreen(),
      );

  RouteBase _bottomNavigationRoute() => GoRoute(
        name: TasksRoute.bottomNavigation.routeName,
        path: TasksRoute.bottomNavigation.path,
        builder: (_, __) => const AppNavigationWrapper(),
      );

  RouteBase _createTaskRoute() => GoRoute(
        name: TasksRoute.createTask.routeName,
        path: TasksRoute.createTask.path,
        builder: (_, __) => CreateTask(),
      );

  RouteBase _tasksInProgressRoute() => GoRoute(
        name: TasksRoute.tasksInProgress.routeName,
        path: TasksRoute.tasksInProgress.path,
        builder: (_, __) => const TasksInProgress(),
      );

  RouteBase _editTaskRoute() => GoRoute(
        name: TasksRoute.editTask.routeName,
        path: TasksRoute.editTask.path,
        builder: (_, state) => EditTask(task: state.extra as Task),
      );
}
