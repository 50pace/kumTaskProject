import 'package:tasks_project/data/model/auth_request_dto/auth_request_dto.dart';
import 'package:tasks_project/domain/entities/auth_response.dart';
import 'package:tasks_project/domain/repository/auth/auth_repository.dart';
import 'package:tasks_project/domain/use_case/auth/login_use_case.dart';

class LoginUseCaseImpl implements LoginUseCase{
  final AuthRepository authRepository;

  LoginUseCaseImpl(this.authRepository);

  @override
  Future<AuthResponse> login(AuthRequestDto authRequestDto) {
    return authRepository.login(authRequestDto);
  }
}