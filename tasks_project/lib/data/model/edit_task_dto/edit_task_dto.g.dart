// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_task_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EditTaskDtoImpl _$$EditTaskDtoImplFromJson(Map<String, dynamic> json) =>
    _$EditTaskDtoImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      priority: json['priority'] as String,
      done: json['done'] as bool,
    );

Map<String, dynamic> _$$EditTaskDtoImplToJson(_$EditTaskDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'priority': instance.priority,
      'done': instance.done,
    };
