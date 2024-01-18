part of 'app_navigation_wrapper_bloc.dart';

abstract class AppNavigationWrapperState extends Equatable {
  const AppNavigationWrapperState();
}

class AppNavigationWrapperInitial extends AppNavigationWrapperState {
  @override
  List<Object> get props => [];
}

class AppNavigationLoggedOutState extends AppNavigationWrapperState {
  @override
  List<Object> get props => [];
}


