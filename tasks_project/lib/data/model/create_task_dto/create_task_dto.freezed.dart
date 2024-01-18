// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_task_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateTaskDto _$CreateTaskDtoFromJson(Map<String, dynamic> json) {
  return _CreateTaskDto.fromJson(json);
}

/// @nodoc
mixin _$CreateTaskDto {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get priority => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateTaskDtoCopyWith<CreateTaskDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTaskDtoCopyWith<$Res> {
  factory $CreateTaskDtoCopyWith(
          CreateTaskDto value, $Res Function(CreateTaskDto) then) =
      _$CreateTaskDtoCopyWithImpl<$Res, CreateTaskDto>;
  @useResult
  $Res call({String title, String description, String priority});
}

/// @nodoc
class _$CreateTaskDtoCopyWithImpl<$Res, $Val extends CreateTaskDto>
    implements $CreateTaskDtoCopyWith<$Res> {
  _$CreateTaskDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? priority = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateTaskDtoImplCopyWith<$Res>
    implements $CreateTaskDtoCopyWith<$Res> {
  factory _$$CreateTaskDtoImplCopyWith(
          _$CreateTaskDtoImpl value, $Res Function(_$CreateTaskDtoImpl) then) =
      __$$CreateTaskDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String description, String priority});
}

/// @nodoc
class __$$CreateTaskDtoImplCopyWithImpl<$Res>
    extends _$CreateTaskDtoCopyWithImpl<$Res, _$CreateTaskDtoImpl>
    implements _$$CreateTaskDtoImplCopyWith<$Res> {
  __$$CreateTaskDtoImplCopyWithImpl(
      _$CreateTaskDtoImpl _value, $Res Function(_$CreateTaskDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? priority = null,
  }) {
    return _then(_$CreateTaskDtoImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateTaskDtoImpl implements _CreateTaskDto {
  const _$CreateTaskDtoImpl(
      {required this.title, required this.description, required this.priority});

  factory _$CreateTaskDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateTaskDtoImplFromJson(json);

  @override
  final String title;
  @override
  final String description;
  @override
  final String priority;

  @override
  String toString() {
    return 'CreateTaskDto(title: $title, description: $description, priority: $priority)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTaskDtoImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.priority, priority) ||
                other.priority == priority));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, description, priority);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateTaskDtoImplCopyWith<_$CreateTaskDtoImpl> get copyWith =>
      __$$CreateTaskDtoImplCopyWithImpl<_$CreateTaskDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateTaskDtoImplToJson(
      this,
    );
  }
}

abstract class _CreateTaskDto implements CreateTaskDto {
  const factory _CreateTaskDto(
      {required final String title,
      required final String description,
      required final String priority}) = _$CreateTaskDtoImpl;

  factory _CreateTaskDto.fromJson(Map<String, dynamic> json) =
      _$CreateTaskDtoImpl.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  String get priority;
  @override
  @JsonKey(ignore: true)
  _$$CreateTaskDtoImplCopyWith<_$CreateTaskDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
