part of 'create_task_bloc.dart';

abstract class CreateTaskState extends Equatable {
  const CreateTaskState();
}

class CreateTaskInitial extends CreateTaskState {
  @override
  List<Object> get props => [];
}

class CreateTaskLoading extends CreateTaskState {
  @override
  List<Object> get props => [];
}

class CreateTaskSuccess extends CreateTaskState {
  final TaskDto task;

  const CreateTaskSuccess({required this.task});

  @override
  List<Object> get props => [];
}

class CreateTaskError extends CreateTaskState {
  final String? errorMessage;

  const CreateTaskError({this.errorMessage});

  @override
  List<Object> get props => [];
}
