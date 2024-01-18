import 'package:tasks_project/data/model/auth_request_dto/auth_request_dto.dart';
import 'package:tasks_project/domain/entities/auth_response.dart';

abstract interface class RegistrationUseCase {
  Future register(AuthRequestDto authRequestDto);
}