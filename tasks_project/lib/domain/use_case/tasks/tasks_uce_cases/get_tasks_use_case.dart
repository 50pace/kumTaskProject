import 'package:tasks_project/domain/entities/task/task.dart';

abstract interface class GetTasksUseCase {
  Future<List<Task>> getTasksInProgress();
  Future<List<Task>> getDoneTasks();
}
