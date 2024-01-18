import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasks_project/data/di/data_service_locator.dart';
import 'package:tasks_project/presentation/auth/auth_bloc/auth_bloc.dart';
import 'package:tasks_project/presentation/auth/login/login_screen.dart';
import 'package:tasks_project/presentation/auth/registration/registration_screen.dart';

class AuthScreen extends StatelessWidget {

  AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body:
        SafeArea(
            child:
            BlocProvider(
              create: (context) => serviceLocator.get<AuthBloc>(),
              child: const AuthNavigator(),
            ),
        )
    );
  }
}

class AuthNavigator extends StatelessWidget {
  const AuthNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          return (state is AuthRegisterState) ? Registration() : const Login();
        }
    );
  }
}
