part of 'app_navigation_wrapper_bloc.dart';

abstract class AppNavigationWrapperEvent extends Equatable {
  const AppNavigationWrapperEvent();
}

class AppNavigationWrapperLogOutEvent extends AppNavigationWrapperEvent {
  @override
  List<Object?> get props => throw UnimplementedError();
}


