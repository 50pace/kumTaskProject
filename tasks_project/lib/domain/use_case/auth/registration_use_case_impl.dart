import 'package:tasks_project/data/model/auth_request_dto/auth_request_dto.dart';
import 'package:tasks_project/domain/repository/auth/auth_repository.dart';
import 'package:tasks_project/domain/use_case/auth/registration_use_case.dart';

class RegistrationUseCaseImpl implements RegistrationUseCase {
  final AuthRepository authRepository;

  RegistrationUseCaseImpl(this.authRepository);

  @override
  Future register(AuthRequestDto authRequestDto) {
    return authRepository.register(authRequestDto);
  }
}