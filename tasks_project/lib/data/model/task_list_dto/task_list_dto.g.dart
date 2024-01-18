// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_list_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaskListDtoImpl _$$TaskListDtoImplFromJson(Map<String, dynamic> json) =>
    _$TaskListDtoImpl(
      count: json['count'] as int,
      items: (json['items'] as List<dynamic>)
          .map((e) => TaskDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TaskListDtoImplToJson(_$TaskListDtoImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'items': instance.items,
    };
