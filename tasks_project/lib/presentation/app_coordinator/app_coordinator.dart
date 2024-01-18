import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasks_project/data/di/data_service_locator.dart';
import 'package:tasks_project/presentation/app_coordinator/bloc/app_coordinator_bloc.dart';
import 'package:tasks_project/presentation/auth/auth_screen.dart';
import 'package:tasks_project/presentation/common/app_navigation_wrapper/app_navigation_wrapper.dart';

class AppCoordinatorScreen extends StatelessWidget {

  const AppCoordinatorScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body:
        SafeArea(
          child:
          BlocProvider(
            create: (context) {
              final service = serviceLocator.get<AppCoordinatorBloc>();
              service.add(const AppCoordinatorEvent());
              return service;
            },
            child: const AppCoordinator(),
          ),
        )
    );
  }
}

class AppCoordinator extends StatelessWidget {
  const AppCoordinator({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCoordinatorBloc, AppCoordinatorState>(
        builder: (context, state) {
          return (state is LoggedInState) ? const AppNavigationWrapper() : AuthScreen();
        }
    );
  }
}