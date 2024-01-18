import 'package:tasks_project/domain/repository/tasks/tasks_repository.dart';
import 'package:tasks_project/domain/use_case/tasks/tasks_uce_cases/delete_task_use_case.dart';

class DeleteTaskUseCaseImpl implements DeleteTaskUseCase {
  final TasksRepository tasksRepository;

  DeleteTaskUseCaseImpl(this.tasksRepository);

  @override
  Future deleteTask(String taskId) {
    return tasksRepository.deleteTask(taskId);
  }
}