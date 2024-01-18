import 'package:tasks_project/data/local_data_source/shared_preferences/shared_preferences_constats.dart';
import 'package:tasks_project/data/local_data_source/shared_preferences/shared_preferences_manager.dart';
import 'package:tasks_project/data/model/auth_request_dto/auth_request_dto.dart';
import 'package:tasks_project/data/model/auth_response_dto/auth_response_dto.dart';
import 'package:tasks_project/data/remote_data_source/network/data_service.dart';
import 'package:tasks_project/domain/entities/auth_response.dart';
import 'package:tasks_project/domain/repository/auth/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {

  final DataService dataService;
  final SharedPreferencesManager sharedPreferencesManager;

  AuthRepositoryImpl(this.dataService, this.sharedPreferencesManager);

  @override
  Future<AuthResponse> login(AuthRequestDto authRequestDto) async {
    final authResponseDto = await dataService.login(authRequestDto);
    final userInfo = authResponseDto.toAuthResponse();
    saveAccessToken(userInfo.accessToken);
    return userInfo;
  }

  @override
  Future register(AuthRequestDto authRequestDto) async {
    final response = await dataService.register(authRequestDto);
    return response;
  }

  void saveAccessToken(String token) {
    sharedPreferencesManager.setString(SharedPreferencesConstants.accessToken, token);
  }

}