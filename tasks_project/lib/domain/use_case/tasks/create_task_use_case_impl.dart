import 'package:tasks_project/data/model/create_task_dto/create_task_dto.dart';
import 'package:tasks_project/data/model/task_dto/task_dto.dart';
import 'package:tasks_project/domain/repository/tasks/tasks_repository.dart';
import 'package:tasks_project/domain/use_case/tasks/tasks_uce_cases/create_task_use_case.dart';

class CreateTaskUseCaseImpl implements CreateTaskUseCase {
  final TasksRepository tasksRepository;

  CreateTaskUseCaseImpl(this.tasksRepository);

  @override
  Future<TaskDto> createTask(CreateTaskDto task) {
    return tasksRepository.createTask(task);
  }
}