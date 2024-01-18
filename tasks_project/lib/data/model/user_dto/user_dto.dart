import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tasks_project/domain/entities/user.dart';
part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
class UserDto with _$UserDto{

  const factory UserDto({
    required String id,
    required String username
  }) = _UserDto;

  factory UserDto.fromJson(Map<String, Object?> json) => _$UserDtoFromJson(json);
}

extension UserDtoExtension on UserDto {
  User toUser() {
    return User(
      id: id,
      username: username,
    );
  }
}