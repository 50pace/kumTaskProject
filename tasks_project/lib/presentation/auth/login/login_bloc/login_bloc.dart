import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:tasks_project/data/model/auth_request_dto/auth_request_dto.dart';
import 'package:tasks_project/domain/use_case/auth/login_use_case.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {

  final LoginUseCase loginUseCase;

  LoginBloc(this.loginUseCase) : super(LoginInitial()) {
    on<SignInEvent>((event, emit) {
      emitLogin(event);
    });

    on<OnEmailChangeEvent>((event, emit) {
      emitEmailOnChange(event);
    });

    on<OnPasswordChangeEvent>((event, emit) {
      emitPasswordOnChange(event);
    });

  }

  void emitLogin(SignInEvent event) async {
    if (!isValidEmail(event.username)) {
      emit(const LoginError(errorMessage: 'Email is not valid.'));
      emit(LoginInitial());
    } else if (!isValidPassword(event.password)) {
      emit(const LoginError(errorMessage: 'Password is not valid.'));
      emit(LoginInitial());
    } else {
      try {
        emit(LoginLoading());
        final authRequestDto = AuthRequestDto(username: event.username, password: event.password);
        await loginUseCase.login(authRequestDto);
        emit(LoginSuccess());
      } on Exception catch(e) {
        emit(LoginError(errorMessage: e.toString()));
      }
    }
  }

  void emitEmailOnChange(OnEmailChangeEvent event) {
    isValidEmail(event.email) || event.email.isEmpty ? emit(EmailValid()) : emit(EmailInValid());
  }

  void emitPasswordOnChange(OnPasswordChangeEvent event) {
    isValidPassword(event.password) || event.password.isEmpty ? emit(PasswordValid()) : emit(PasswordInValid());
  }

  bool isValidEmail(String email) {
    RegExp emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');

    return emailRegex.hasMatch(email);
  }

  bool isValidPassword(String password) {
    return password.length >= 5;
  }
}
