import 'package:tasks_project/data/model/task_dto/task_dto.dart';

abstract interface class GetTaskUseCase {
  Future<TaskDto> getTaskWithId(String taskId);
}