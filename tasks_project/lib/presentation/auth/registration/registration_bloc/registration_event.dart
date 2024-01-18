part of 'registration_bloc.dart';

class RegistrationEvent extends Equatable {
  final String username;
  final String password;
  const RegistrationEvent(this.username, this.password);

  @override
  List<Object?> get props => [username,password];
}
