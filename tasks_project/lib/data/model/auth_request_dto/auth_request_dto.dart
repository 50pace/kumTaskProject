import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_request_dto.freezed.dart';
part 'auth_request_dto.g.dart';

@freezed
class AuthRequestDto with _$AuthRequestDto{

  const factory AuthRequestDto({
    required String username,
    required String password
  }) = _AuthRequestDto;

  factory AuthRequestDto.fromJson(Map<String, Object?> json) => _$AuthRequestDtoFromJson(json);
}