import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:tasks_project/data/model/auth_request_dto/auth_request_dto.dart';
import 'package:tasks_project/domain/use_case/auth/registration_use_case.dart';

part 'registration_event.dart';
part 'registration_state.dart';

class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {

  final RegistrationUseCase registrationUseCase;

  RegistrationBloc(this.registrationUseCase) : super(RegistrationInitial()) {
    on<RegistrationEvent>((event, emit) {
      emitRegistration(event);
    });
  }

  void emitRegistration(RegistrationEvent event) async {
    try {
      emit(RegistrationLoading());
      final authRequestDto = AuthRequestDto(username: event.username, password: event.password);
      await registrationUseCase.register(authRequestDto);
      emit(RegistrationSuccess());
    } on Exception {
      emit(const RegistrationError());
    }
  }
}
