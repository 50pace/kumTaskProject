import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tasks_project/data/model/task_dto/task_dto.dart';
import 'package:tasks_project/domain/entities/task/task.dart';
import 'package:tasks_project/domain/entities/task_list.dart';

part 'task_list_dto.freezed.dart';
part 'task_list_dto.g.dart';

@freezed
class TaskListDto with _$TaskListDto {

  const factory TaskListDto({
    required int count,
    required List<TaskDto> items
  }) = _TaskListDto;

  factory TaskListDto.fromJson(Map<String, Object?> json) => _$TaskListDtoFromJson(json);
}

extension TaskListDtoExtension on TaskListDto {
  TaskList toTaskList() {
    return TaskList(
        count: count,
        items: items.map((e) => e.toTask()).toList());
  }
}