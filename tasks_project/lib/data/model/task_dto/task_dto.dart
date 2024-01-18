import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tasks_project/data/model/priority/priority.dart';
import 'package:tasks_project/data/model/status_dto/status_dto.dart';
import 'package:tasks_project/domain/entities/task/task.dart';

part 'task_dto.freezed.dart';
part 'task_dto.g.dart';

@freezed
class TaskDto with _$TaskDto {

  const factory TaskDto({
    required String id,
    required String title,
    required String description,
    required bool done,
    required String priority
  }) = _TaskDto;

  factory TaskDto.fromJson(Map<String, Object?> json) => _$TaskDtoFromJson(json);
}

extension TaskDtoExtension on TaskDto {
  Task toTask() {
    return Task(
      id: id,
      title: title,
      description: description,
      status: mapStatus(done),
      priority: mapPriority(priority)
    );
  }

  PriorityType mapPriority(String priority) {
    switch (priority.toLowerCase()) {
      case 'low':
        return PriorityType.low;
      case 'medium':
        return PriorityType.medium;
      case 'high':
        return PriorityType.high;
      default:
        throw Exception('Invalid priority type');
    }
  }

  Status mapStatus(bool status) {
    return status ? Status.done : Status.inProgress;
  }
}