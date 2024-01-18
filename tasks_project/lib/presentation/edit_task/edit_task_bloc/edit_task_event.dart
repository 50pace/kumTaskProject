part of 'edit_task_bloc.dart';

abstract class EditTaskEvent extends Equatable {
  const EditTaskEvent();
}

class PatchTaskEvent extends EditTaskEvent {
  final EditTaskDto task;
  const PatchTaskEvent(this.task);

  @override
  List<Object?> get props => [task];

}

class DeleteTaskEvent extends EditTaskEvent {
  final String taskId;
  const DeleteTaskEvent(this.taskId);

  @override
  List<Object?> get props => [taskId];

}


