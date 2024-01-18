import 'package:tasks_project/data/model/edit_task_dto/edit_task_dto.dart';
import 'package:tasks_project/data/model/task_dto/task_dto.dart';
import 'package:tasks_project/domain/repository/tasks/tasks_repository.dart';
import 'package:tasks_project/domain/use_case/tasks/tasks_uce_cases/edit_task_use_case.dart';

class EditTaskUseCaseImpl implements EditTaskUseCase {
  final TasksRepository tasksRepository;

  EditTaskUseCaseImpl(this.tasksRepository);

  @override
  Future<TaskDto> editTask(EditTaskDto task) {
    return tasksRepository.editTask(task);
  }
}