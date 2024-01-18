import 'package:tasks_project/data/model/task_dto/task_dto.dart';
import 'package:tasks_project/domain/repository/tasks/tasks_repository.dart';
import 'package:tasks_project/domain/use_case/tasks/tasks_uce_cases/get_task_use_case.dart';

class GetTaskUseCaseImpl implements GetTaskUseCase {
  final TasksRepository tasksRepository;

  GetTaskUseCaseImpl({required this.tasksRepository});

  @override
  Future<TaskDto> getTaskWithId(String taskId) {
    return tasksRepository.getTaskWithId(taskId);
  }
}