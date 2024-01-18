import 'dart:ffi';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tasks_project/data/model/priority/priority.dart';
import 'package:tasks_project/data/model/status_dto/status_dto.dart';
import 'package:tasks_project/data/model/task_dto/task_dto.dart';

part 'task.freezed.dart';
part 'task.g.dart';

@freezed
class Task with _$Task {

  const factory Task({
    required String id,
    required String title,
    required String description,
    required Status status,
    required PriorityType priority
  }) = _Task;

  factory Task.fromJson(Map<String, Object?> json) => _$TaskFromJson(json);
}

extension TaskExtension on Task {
  TaskDto toTaskDto() {
    return TaskDto(
        id: id,
        title: title,
        description: description,
        done: status.value,
        priority: priority.value
    );
  }
}