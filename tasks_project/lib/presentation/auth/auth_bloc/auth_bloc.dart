import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:tasks_project/data/local_data_source/shared_preferences/shared_preferences_manager.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthkEvent, AuthState> {

  AuthBloc() : super(AuthLoginState()) {

    on<AuthLoginEvent>((event, emit) {
        emit(AuthLoginState());
    });

    on<AuthRegisterEvent>((event, emit) {
        emit(AuthRegisterState());
    });
  }
}
