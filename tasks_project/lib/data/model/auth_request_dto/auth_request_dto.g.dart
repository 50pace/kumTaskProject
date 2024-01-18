// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthRequestDtoImpl _$$AuthRequestDtoImplFromJson(Map<String, dynamic> json) =>
    _$AuthRequestDtoImpl(
      username: json['username'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$AuthRequestDtoImplToJson(
        _$AuthRequestDtoImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
    };
