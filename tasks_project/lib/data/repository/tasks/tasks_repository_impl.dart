import 'package:tasks_project/data/model/create_task_dto/create_task_dto.dart';
import 'package:tasks_project/data/model/edit_task_dto/edit_task_dto.dart';
import 'package:tasks_project/data/model/task_dto/task_dto.dart';
import 'package:tasks_project/data/model/task_list_dto/task_list_dto.dart';
import 'package:tasks_project/data/remote_data_source/network/data_service.dart';
import 'package:tasks_project/domain/entities/task_list.dart';
import 'package:tasks_project/domain/repository/tasks/tasks_repository.dart';

class TasksRepositoryImpl implements TasksRepository {

  final DataService dataService;

  TasksRepositoryImpl(this.dataService);

  @override
  Future<TaskDto> createTask(CreateTaskDto task) {
    return dataService.createTask(task);
  }

  @override
  Future deleteTask(String taskId) {
    return dataService.deleteTask(taskId);
  }

  @override
  Future<TaskDto> editTask(EditTaskDto task) {
    return dataService.editTask(task);
  }

  @override
  Future<TaskList> getTasks() async {
    final response = await dataService.getTasks();
    return response.toTaskList();
  }

  @override
  Future<TaskDto> getTaskWithId(String taskId) {
    return dataService.getTaskWithId(taskId);
  }


}