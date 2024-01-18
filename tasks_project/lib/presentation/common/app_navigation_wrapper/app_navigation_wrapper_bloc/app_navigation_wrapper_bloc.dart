import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:tasks_project/data/local_data_source/shared_preferences/shared_preferences_constats.dart';
import 'package:tasks_project/data/local_data_source/shared_preferences/shared_preferences_manager.dart';

part 'app_navigation_wrapper_event.dart';
part 'app_navigation_wrapper_state.dart';

class AppNavigationWrapperBloc extends Bloc<AppNavigationWrapperEvent, AppNavigationWrapperState> {

  final SharedPreferencesManager sharedPreferencesManager;

  AppNavigationWrapperBloc(this.sharedPreferencesManager) : super(AppNavigationWrapperInitial()) {
    on<AppNavigationWrapperLogOutEvent>((event, emit) async {
      await sharedPreferencesManager.removeString(SharedPreferencesConstants.accessToken);
      emit(AppNavigationLoggedOutState());
    });
  }
}
