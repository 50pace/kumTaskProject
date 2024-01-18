// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_task_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EditTaskDto _$EditTaskDtoFromJson(Map<String, dynamic> json) {
  return _EditTaskDto.fromJson(json);
}

/// @nodoc
mixin _$EditTaskDto {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get priority => throw _privateConstructorUsedError;
  bool get done => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EditTaskDtoCopyWith<EditTaskDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditTaskDtoCopyWith<$Res> {
  factory $EditTaskDtoCopyWith(
          EditTaskDto value, $Res Function(EditTaskDto) then) =
      _$EditTaskDtoCopyWithImpl<$Res, EditTaskDto>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      String priority,
      bool done});
}

/// @nodoc
class _$EditTaskDtoCopyWithImpl<$Res, $Val extends EditTaskDto>
    implements $EditTaskDtoCopyWith<$Res> {
  _$EditTaskDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? priority = null,
    Object? done = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
      done: null == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EditTaskDtoImplCopyWith<$Res>
    implements $EditTaskDtoCopyWith<$Res> {
  factory _$$EditTaskDtoImplCopyWith(
          _$EditTaskDtoImpl value, $Res Function(_$EditTaskDtoImpl) then) =
      __$$EditTaskDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      String priority,
      bool done});
}

/// @nodoc
class __$$EditTaskDtoImplCopyWithImpl<$Res>
    extends _$EditTaskDtoCopyWithImpl<$Res, _$EditTaskDtoImpl>
    implements _$$EditTaskDtoImplCopyWith<$Res> {
  __$$EditTaskDtoImplCopyWithImpl(
      _$EditTaskDtoImpl _value, $Res Function(_$EditTaskDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? priority = null,
    Object? done = null,
  }) {
    return _then(_$EditTaskDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
      done: null == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EditTaskDtoImpl implements _EditTaskDto {
  const _$EditTaskDtoImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.priority,
      required this.done});

  factory _$EditTaskDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$EditTaskDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final String priority;
  @override
  final bool done;

  @override
  String toString() {
    return 'EditTaskDto(id: $id, title: $title, description: $description, priority: $priority, done: $done)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditTaskDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.done, done) || other.done == done));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, description, priority, done);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditTaskDtoImplCopyWith<_$EditTaskDtoImpl> get copyWith =>
      __$$EditTaskDtoImplCopyWithImpl<_$EditTaskDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EditTaskDtoImplToJson(
      this,
    );
  }
}

abstract class _EditTaskDto implements EditTaskDto {
  const factory _EditTaskDto(
      {required final String id,
      required final String title,
      required final String description,
      required final String priority,
      required final bool done}) = _$EditTaskDtoImpl;

  factory _EditTaskDto.fromJson(Map<String, dynamic> json) =
      _$EditTaskDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  String get priority;
  @override
  bool get done;
  @override
  @JsonKey(ignore: true)
  _$$EditTaskDtoImplCopyWith<_$EditTaskDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
