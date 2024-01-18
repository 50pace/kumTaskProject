// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaskDtoImpl _$$TaskDtoImplFromJson(Map<String, dynamic> json) =>
    _$TaskDtoImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      done: json['done'] as bool,
      priority: json['priority'] as String,
    );

Map<String, dynamic> _$$TaskDtoImplToJson(_$TaskDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'done': instance.done,
      'priority': instance.priority,
    };
