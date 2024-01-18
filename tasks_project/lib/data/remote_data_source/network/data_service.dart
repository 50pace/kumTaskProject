import 'package:tasks_project/data/model/auth_request_dto/auth_request_dto.dart';
import 'package:tasks_project/data/model/auth_response_dto/auth_response_dto.dart';
import 'package:tasks_project/data/model/create_task_dto/create_task_dto.dart';
import 'package:tasks_project/data/model/edit_task_dto/edit_task_dto.dart';
import 'package:tasks_project/data/model/task_dto/task_dto.dart';
import 'package:tasks_project/data/model/task_list_dto/task_list_dto.dart';

abstract interface class DataService {
  //Auth
  Future<AuthResponseDto> login(AuthRequestDto authRequestDto);
  Future register(AuthRequestDto authRequestDto);

  //Tasks
  Future<TaskListDto> getTasks();
  Future<TaskDto> getTaskWithId(String taskId);
  Future<TaskDto> createTask(CreateTaskDto task);
  Future<TaskDto> editTask(EditTaskDto task);
  Future deleteTask(String taskId);
}