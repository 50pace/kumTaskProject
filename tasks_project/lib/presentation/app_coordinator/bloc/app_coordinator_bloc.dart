import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:tasks_project/data/local_data_source/shared_preferences/shared_preferences_constats.dart';
import 'package:tasks_project/data/local_data_source/shared_preferences/shared_preferences_manager.dart';

part 'app_coordinator_event.dart';
part 'app_coordinator_state.dart';

class AppCoordinatorBloc extends Bloc<AppCoordinatorEvent, AppCoordinatorState> {
  final SharedPreferencesManager sharedPreferencesManager;

  AppCoordinatorBloc(this.sharedPreferencesManager) : super(AppCoordinatorInitial()) {

      on<AppCoordinatorEvent>((event, emit) async {
        await isUserLoggedIn() ? emit(LoggedInState()) : emit(LoggedOutState());
      });
  }

  Future<bool> isUserLoggedIn() async {
    final token = sharedPreferencesManager.getString(SharedPreferencesConstants.accessToken);
    return token.isNotEmpty;
  }
}
