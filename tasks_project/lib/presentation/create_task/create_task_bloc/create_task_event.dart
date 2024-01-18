part of 'create_task_bloc.dart';


class CreateTaskEvent extends Equatable {
  final CreateTaskDto task;
  const CreateTaskEvent(this.task);

  @override
  List<Object?> get props => [task];
}

