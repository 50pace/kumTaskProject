part of 'login_bloc.dart';

abstract class LoginState extends Equatable {
  const LoginState();
}

class LoginInitial extends LoginState {
  @override
  List<Object> get props => [];
}

class LoginLoading extends LoginState {
  @override
  List<Object?> get props => throw UnimplementedError();
}

class LoginSuccess extends LoginState {
  @override
  List<Object?> get props => throw UnimplementedError();
}

class LoginError extends LoginState {
  final String? errorMessage;

  const LoginError({this.errorMessage});

  @override
  List<Object?> get props => [errorMessage];
}

class EmailValid extends LoginState {
  @override
  List<Object?> get props => throw UnimplementedError();
}

class EmailInValid extends LoginState {
  @override
  List<Object?> get props => throw UnimplementedError();
}

class PasswordValid extends LoginState {
  @override
  List<Object?> get props => throw UnimplementedError();
}

class PasswordInValid extends LoginState {
  @override
  List<Object?> get props => throw UnimplementedError();
}