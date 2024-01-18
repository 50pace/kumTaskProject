part of 'auth_bloc.dart';

abstract class AuthkEvent extends Equatable {
  const AuthkEvent();
}

class AuthLoginEvent extends AuthkEvent {
  const AuthLoginEvent();

  @override
  List<Object?> get props => [];
}

class AuthRegisterEvent extends AuthkEvent {
  const AuthRegisterEvent();

  @override
  List<Object?> get props => [];
}

