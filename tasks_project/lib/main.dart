import 'package:flutter/material.dart';
import 'package:tasks_project/presentation/common/router/tasks_router.dart';
import 'data/di/data_service_locator.dart' as data_service_locator;
import 'domain/di/domain_service_locator.dart' as domain_service_locator;
import 'presentation/di/presentation_service_locator.dart' as presentation_service_locator;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await _initDependencies();
  runApp(const MyApp());
}

Future<void> _initDependencies() async {
  await data_service_locator.init();
  await domain_service_locator.init();
  await presentation_service_locator.init();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig:
      presentation_service_locator.get<TasksRouter>().getRouter(),
      title: 'Tasks',
      themeMode: ThemeMode.light,
    );
  }
}

