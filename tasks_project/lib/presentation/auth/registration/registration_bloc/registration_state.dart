part of 'registration_bloc.dart';

abstract class RegistrationState extends Equatable {
  const RegistrationState();
}

class RegistrationInitial extends RegistrationState {
  @override
  List<Object> get props => [];
}

class RegistrationLoading extends RegistrationState {
  @override
  List<Object?> get props => throw UnimplementedError();
}

class RegistrationSuccess extends RegistrationState {
  @override
  List<Object?> get props => throw UnimplementedError();
}

class RegistrationError extends RegistrationState {
  final String? errorMessage;

  const RegistrationError({this.errorMessage});

  @override
  List<Object?> get props => [errorMessage];
}