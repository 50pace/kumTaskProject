part of 'app_coordinator_bloc.dart';

abstract class AppCoordinatorState extends Equatable {
  const AppCoordinatorState();
}

class AppCoordinatorInitial extends AppCoordinatorState {
  @override
  List<Object> get props => [];
}

class LoggedInState extends AppCoordinatorState {
  @override
  List<Object> get props => [];
}

class LoggedOutState extends AppCoordinatorState {
  @override
  List<Object> get props => [];
}