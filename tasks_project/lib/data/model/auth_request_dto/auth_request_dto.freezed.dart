// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthRequestDto _$AuthRequestDtoFromJson(Map<String, dynamic> json) {
  return _AuthRequestDto.fromJson(json);
}

/// @nodoc
mixin _$AuthRequestDto {
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthRequestDtoCopyWith<AuthRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthRequestDtoCopyWith<$Res> {
  factory $AuthRequestDtoCopyWith(
          AuthRequestDto value, $Res Function(AuthRequestDto) then) =
      _$AuthRequestDtoCopyWithImpl<$Res, AuthRequestDto>;
  @useResult
  $Res call({String username, String password});
}

/// @nodoc
class _$AuthRequestDtoCopyWithImpl<$Res, $Val extends AuthRequestDto>
    implements $AuthRequestDtoCopyWith<$Res> {
  _$AuthRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthRequestDtoImplCopyWith<$Res>
    implements $AuthRequestDtoCopyWith<$Res> {
  factory _$$AuthRequestDtoImplCopyWith(_$AuthRequestDtoImpl value,
          $Res Function(_$AuthRequestDtoImpl) then) =
      __$$AuthRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String username, String password});
}

/// @nodoc
class __$$AuthRequestDtoImplCopyWithImpl<$Res>
    extends _$AuthRequestDtoCopyWithImpl<$Res, _$AuthRequestDtoImpl>
    implements _$$AuthRequestDtoImplCopyWith<$Res> {
  __$$AuthRequestDtoImplCopyWithImpl(
      _$AuthRequestDtoImpl _value, $Res Function(_$AuthRequestDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_$AuthRequestDtoImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthRequestDtoImpl implements _AuthRequestDto {
  const _$AuthRequestDtoImpl({required this.username, required this.password});

  factory _$AuthRequestDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthRequestDtoImplFromJson(json);

  @override
  final String username;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthRequestDto(username: $username, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthRequestDtoImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, username, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthRequestDtoImplCopyWith<_$AuthRequestDtoImpl> get copyWith =>
      __$$AuthRequestDtoImplCopyWithImpl<_$AuthRequestDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthRequestDtoImplToJson(
      this,
    );
  }
}

abstract class _AuthRequestDto implements AuthRequestDto {
  const factory _AuthRequestDto(
      {required final String username,
      required final String password}) = _$AuthRequestDtoImpl;

  factory _AuthRequestDto.fromJson(Map<String, dynamic> json) =
      _$AuthRequestDtoImpl.fromJson;

  @override
  String get username;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$AuthRequestDtoImplCopyWith<_$AuthRequestDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
