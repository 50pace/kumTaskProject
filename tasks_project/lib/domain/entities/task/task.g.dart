// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaskImpl _$$TaskImplFromJson(Map<String, dynamic> json) => _$TaskImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      status: $enumDecode(_$StatusEnumMap, json['status']),
      priority: $enumDecode(_$PriorityTypeEnumMap, json['priority']),
    );

Map<String, dynamic> _$$TaskImplToJson(_$TaskImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'status': _$StatusEnumMap[instance.status]!,
      'priority': _$PriorityTypeEnumMap[instance.priority]!,
    };

const _$StatusEnumMap = {
  Status.done: 'done',
  Status.inProgress: 'inProgress',
};

const _$PriorityTypeEnumMap = {
  PriorityType.low: 'low',
  PriorityType.medium: 'medium',
  PriorityType.high: 'high',
};
