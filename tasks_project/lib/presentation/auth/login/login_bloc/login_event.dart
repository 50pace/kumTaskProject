part of 'login_bloc.dart';


class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object?> get props => throw UnimplementedError();
}

class SignInEvent extends LoginEvent {
  final String username;
  final String password;

  const SignInEvent(this.username, this.password);

  @override
  List<Object?> get props => [username,password];
}

class OnEmailChangeEvent extends LoginEvent {
  final String email;

  const OnEmailChangeEvent(this.email);

  @override
  List<Object?> get props => [email];
}

class OnPasswordChangeEvent extends LoginEvent {
  final String password;

  const OnPasswordChangeEvent(this.password);

  @override
  List<Object?> get props => [password];
}