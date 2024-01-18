import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tasks_project/common/utils/pop_up_extension.dart';
import 'package:tasks_project/data/di/data_service_locator.dart';
import 'package:tasks_project/presentation/auth/auth_bloc/auth_bloc.dart';
import 'package:tasks_project/presentation/auth/registration/registration_bloc/registration_bloc.dart';
import 'package:tasks_project/presentation/common/components/tp_button.dart';
import 'package:tasks_project/presentation/common/components/tp_snack_bar.dart';
import 'package:tasks_project/presentation/common/components/tp_textfield.dart';
import 'package:tasks_project/presentation/common/constants.dart';
import 'package:tasks_project/presentation/common/router/tasks_route.dart';


class Registration extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Registration({super.key});

  @override
  Widget build(BuildContext context) {

    return
    BlocProvider<RegistrationBloc>
      (
        create: (context) => serviceLocator.get<RegistrationBloc>(),
        child:
        BlocConsumer<RegistrationBloc, RegistrationState> (
          listener: (context, state) {
            if (state is RegistrationError && state.errorMessage != null) {
              TPSnackBar.showSnackBar(context, state.errorMessage!, true);
            } else if (state is RegistrationSuccess) {
              context.showCustomPopup(
                  onSubmitClick: () {
                    context.pop();
                    context.read<AuthBloc>().add(const AuthLoginEvent());
                  },
                  title: 'Success',
                  message: 'Registration is done!',
                  submitTitle: 'Go to login',
                  submitColor: TPColors.lowTagTitle,
              );

            }
          },
          builder: (BuildContext context, state) {
            return Padding(
                padding: const EdgeInsets.fromLTRB(TPMargins.margin20,TPMargins.margin10,TPMargins.margin20,TPMargins.margin10),
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                        'Sign up',
                        style: TextStyle(
                          fontSize: TPMargins.margin20,
                          fontWeight: FontWeight.bold,
                        )
                    ),
                    const Text(
                      'Create an account fot your TimeTrove \n Dashboard.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: TPMargins.margin15,
                        color: Colors.grey,
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.fromLTRB(TPMargins.margin0, TPMargins.margin10, TPMargins.margin0, TPMargins.margin10),
                        child: TPTextField(title: 'Email', placeHolder: 'Log in', controller: emailController,)
                    ),
                    Padding(
                        padding: const EdgeInsets.fromLTRB(TPMargins.margin0, TPMargins.margin10, TPMargins.margin0, TPMargins.margin10),
                        child: TPTextField(title: 'Password', placeHolder: 'Password', controller: passwordController, isPassword: true,)
                    ),
                    Padding(
                        padding: const EdgeInsets.fromLTRB(TPMargins.margin0, TPMargins.margin10, TPMargins.margin0, TPMargins.margin10),
                        child: TPButton(
                            title: 'Sign up',
                            isLoading: state is RegistrationLoading,
                            color: TPColors.primaryButton,
                            onClick: () {
                              context.read<RegistrationBloc>().add(RegistrationEvent(emailController.text, passwordController.text));
                            },
                            titleColor: Colors.white
                        )
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Already have an account? ",
                          style: TextStyle(
                            fontSize: TPMargins.margin15,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: TPMargins.margin8),
                        GestureDetector(
                          onTap: () {
                            context.read<AuthBloc>().add(const AuthLoginEvent());
                          },

                          child: const Text(
                            "Log in",
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
          }
        )
      );

  }
}
