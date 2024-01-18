import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tasks_project/data/model/user_dto/user_dto.dart';
import 'package:tasks_project/domain/entities/auth_response.dart';
part 'auth_response_dto.freezed.dart';
part 'auth_response_dto.g.dart';

@freezed
class AuthResponseDto with _$AuthResponseDto{

  const factory AuthResponseDto({
    required String accessToken,
    required UserDto user
  }) = _AuthResponseDto;

  factory AuthResponseDto.fromJson(Map<String, Object?> json) => _$AuthResponseDtoFromJson(json);
}

extension AuthResponseDtoExtension on AuthResponseDto {
  AuthResponse toAuthResponse() {
    return AuthResponse(
      accessToken: accessToken,
      user: user.toUser()
    );
  }
}