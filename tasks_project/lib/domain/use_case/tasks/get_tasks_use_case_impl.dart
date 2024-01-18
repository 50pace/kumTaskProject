import 'package:tasks_project/data/model/status_dto/status_dto.dart';
import 'package:tasks_project/domain/entities/task/task.dart';
import 'package:tasks_project/domain/repository/tasks/tasks_repository.dart';
import 'package:tasks_project/domain/use_case/tasks/tasks_uce_cases/get_tasks_use_case.dart';

class GetTasksUseCaseImpl implements GetTasksUseCase {
  final TasksRepository tasksRepository;

  GetTasksUseCaseImpl(this.tasksRepository);

  @override
  Future<List<Task>> getTasksInProgress() async {
    final tasks = await tasksRepository.getTasks();
    final inProgressTasks =
        tasks.items.where((task) => task.status == Status.inProgress).toList();
    return inProgressTasks;
  }

  @override
  Future<List<Task>> getDoneTasks() async {
    final tasks = await tasksRepository.getTasks();
    final doneTasks =
        tasks.items.where((task) => task.status == Status.done).toList();
    return doneTasks;
  }
}
