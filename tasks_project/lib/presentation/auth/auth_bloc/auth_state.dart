part of 'auth_bloc.dart';

abstract class AuthState extends Equatable {
  const AuthState();
}

class AuthLoginState extends AuthState {
  @override
  List<Object> get props => [];
}

class AuthRegisterState extends AuthState {
  @override
  List<Object> get props => [];
}

