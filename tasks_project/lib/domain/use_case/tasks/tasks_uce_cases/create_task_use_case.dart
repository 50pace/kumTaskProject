import 'package:tasks_project/data/model/create_task_dto/create_task_dto.dart';
import 'package:tasks_project/data/model/task_dto/task_dto.dart';

abstract interface class CreateTaskUseCase {
  Future<TaskDto> createTask(CreateTaskDto task);
}