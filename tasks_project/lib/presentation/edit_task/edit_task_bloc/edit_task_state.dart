part of 'edit_task_bloc.dart';

abstract class EditTaskState extends Equatable {
  const EditTaskState();
}

class EditTaskInitial extends EditTaskState {
  @override
  List<Object> get props => [];
}

class DeleteTaskLoading extends EditTaskState {
  @override
  List<Object> get props => [];
}

class DeleteTaskSuccess extends EditTaskState {
  @override
  List<Object> get props => [];
}

class EditTaskLoading extends EditTaskState {
  @override
  List<Object> get props => [];
}

class EditTaskSuccess extends EditTaskState {
  @override
  List<Object> get props => [];
}

class EditTaskError extends EditTaskState {
  final String? errorMessage;
  const EditTaskError(this.errorMessage);

  @override
  List<Object> get props => [];
}
