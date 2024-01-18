// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_task_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateTaskDtoImpl _$$CreateTaskDtoImplFromJson(Map<String, dynamic> json) =>
    _$CreateTaskDtoImpl(
      title: json['title'] as String,
      description: json['description'] as String,
      priority: json['priority'] as String,
    );

Map<String, dynamic> _$$CreateTaskDtoImplToJson(_$CreateTaskDtoImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'priority': instance.priority,
    };
