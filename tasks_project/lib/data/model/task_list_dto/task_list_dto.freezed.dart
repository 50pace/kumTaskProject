// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_list_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TaskListDto _$TaskListDtoFromJson(Map<String, dynamic> json) {
  return _TaskListDto.fromJson(json);
}

/// @nodoc
mixin _$TaskListDto {
  int get count => throw _privateConstructorUsedError;
  List<TaskDto> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskListDtoCopyWith<TaskListDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskListDtoCopyWith<$Res> {
  factory $TaskListDtoCopyWith(
          TaskListDto value, $Res Function(TaskListDto) then) =
      _$TaskListDtoCopyWithImpl<$Res, TaskListDto>;
  @useResult
  $Res call({int count, List<TaskDto> items});
}

/// @nodoc
class _$TaskListDtoCopyWithImpl<$Res, $Val extends TaskListDto>
    implements $TaskListDtoCopyWith<$Res> {
  _$TaskListDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<TaskDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaskListDtoImplCopyWith<$Res>
    implements $TaskListDtoCopyWith<$Res> {
  factory _$$TaskListDtoImplCopyWith(
          _$TaskListDtoImpl value, $Res Function(_$TaskListDtoImpl) then) =
      __$$TaskListDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count, List<TaskDto> items});
}

/// @nodoc
class __$$TaskListDtoImplCopyWithImpl<$Res>
    extends _$TaskListDtoCopyWithImpl<$Res, _$TaskListDtoImpl>
    implements _$$TaskListDtoImplCopyWith<$Res> {
  __$$TaskListDtoImplCopyWithImpl(
      _$TaskListDtoImpl _value, $Res Function(_$TaskListDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? items = null,
  }) {
    return _then(_$TaskListDtoImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<TaskDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TaskListDtoImpl implements _TaskListDto {
  const _$TaskListDtoImpl(
      {required this.count, required final List<TaskDto> items})
      : _items = items;

  factory _$TaskListDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaskListDtoImplFromJson(json);

  @override
  final int count;
  final List<TaskDto> _items;
  @override
  List<TaskDto> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'TaskListDto(count: $count, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskListDtoImpl &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, count, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskListDtoImplCopyWith<_$TaskListDtoImpl> get copyWith =>
      __$$TaskListDtoImplCopyWithImpl<_$TaskListDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskListDtoImplToJson(
      this,
    );
  }
}

abstract class _TaskListDto implements TaskListDto {
  const factory _TaskListDto(
      {required final int count,
      required final List<TaskDto> items}) = _$TaskListDtoImpl;

  factory _TaskListDto.fromJson(Map<String, dynamic> json) =
      _$TaskListDtoImpl.fromJson;

  @override
  int get count;
  @override
  List<TaskDto> get items;
  @override
  @JsonKey(ignore: true)
  _$$TaskListDtoImplCopyWith<_$TaskListDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
