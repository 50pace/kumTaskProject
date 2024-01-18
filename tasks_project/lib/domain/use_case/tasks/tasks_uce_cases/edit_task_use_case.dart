import 'package:tasks_project/data/model/edit_task_dto/edit_task_dto.dart';
import 'package:tasks_project/data/model/task_dto/task_dto.dart';

abstract interface class EditTaskUseCase {
  Future<TaskDto> editTask(EditTaskDto task);
}