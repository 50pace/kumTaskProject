import 'package:tasks_project/data/model/create_task_dto/create_task_dto.dart';
import 'package:tasks_project/data/model/edit_task_dto/edit_task_dto.dart';
import 'package:tasks_project/data/model/task_dto/task_dto.dart';
import 'package:tasks_project/domain/entities/task_list.dart';

abstract interface class TasksRepository {
  Future<TaskList> getTasks();
  Future<TaskDto> getTaskWithId(String taskId);
  Future<TaskDto> createTask(CreateTaskDto task);
  Future<TaskDto> editTask(EditTaskDto task);
  Future deleteTask(String taskId);
}