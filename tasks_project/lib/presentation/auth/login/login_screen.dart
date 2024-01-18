import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tasks_project/data/di/data_service_locator.dart';
import 'package:tasks_project/presentation/auth/auth_bloc/auth_bloc.dart';
import 'package:tasks_project/presentation/auth/login/login_bloc/login_bloc.dart';
import 'package:tasks_project/presentation/common/components/tp_button.dart';
import 'package:tasks_project/presentation/common/components/tp_snack_bar.dart';
import 'package:tasks_project/presentation/common/components/tp_textfield.dart';
import 'package:tasks_project/presentation/common/constants.dart';
import 'package:tasks_project/presentation/common/router/tasks_route.dart';


class Login extends StatefulWidget {

  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  late bool isEmailValid = true;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return
      BlocProvider<LoginBloc>(
          create: (context) => serviceLocator.get<LoginBloc>(),
          child:
              BlocConsumer <LoginBloc, LoginState>(
                listener: (context, state) {
                  if (state is LoginError) {
                    TPSnackBar.showSnackBar(context, state.errorMessage ?? '', true);
                  } else if (state is LoginSuccess) {
                    context.go(TasksRoute.bottomNavigation.path);
                  }
                },
                builder: (BuildContext context, state) {
                  return Padding(
                      padding: const EdgeInsets.fromLTRB(TPMargins.margin20,TPMargins.margin10,TPMargins.margin20,TPMargins.margin10),
                      child:  Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                              'Log in',
                              style: TextStyle(
                                fontSize: TPMargins.margin20,
                                fontWeight: FontWeight.bold,
                              )
                          ),
                          const Text(
                            'Use your email to log in to your Time Trove \n Dashboard.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.grey,
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.fromLTRB(TPMargins.margin0,TPMargins.margin10,TPMargins.margin0,TPMargins.margin10),
                              child: TPTextField(
                                  title: 'Email',
                                  placeHolder: 'Log in',
                                  controller: emailController,
                                  isValid: state is EmailValid || emailController.text.isEmpty,
                                  errorText: 'Invalid email',
                                  onChanged: (value) => context.read<LoginBloc>().add(OnEmailChangeEvent(emailController.text)),
                              )
                          ),
                          Padding(
                              padding: const EdgeInsets.fromLTRB(TPMargins.margin0,TPMargins.margin10,TPMargins.margin0,TPMargins.margin10),
                              child: TPTextField(
                                title: 'Password',
                                placeHolder: 'Password',
                                isPassword: true,
                                controller: passwordController,
                                isValid: state is PasswordValid || passwordController.text.isEmpty,
                                errorText: 'Minimum 5 characters',
                                onChanged: (value) => context.read<LoginBloc>().add(OnPasswordChangeEvent(value)),
                              )
                          ),
                          Padding(
                              padding: const EdgeInsets.fromLTRB(TPMargins.margin0,TPMargins.margin10,TPMargins.margin0,TPMargins.margin10),
                              child: TPButton(
                                  title: 'Log in',
                                  isLoading: state is LoginLoading,
                                  color: TPColors.primaryButton,
                                  onClick: () {
                                    context.read<LoginBloc>().add(SignInEvent(emailController.text, passwordController.text));
                                  },
                                  titleColor: Colors.white
                              )
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Don't have an account yet? ",
                                style: TextStyle(
                                  fontSize: TPMargins.margin15,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(height: TPMargins.margin8),
                              GestureDetector(
                                onTap: () {
                                  context.read<AuthBloc>().add(const AuthRegisterEvent());
                                },
                                child: const Text(
                                  "Sign Up",
                                  style: TextStyle(
                                    fontSize: TPMargins.margin15,
                                    color: TPColors.primaryButton,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                  );
                },
              ),
      );
  }
}
