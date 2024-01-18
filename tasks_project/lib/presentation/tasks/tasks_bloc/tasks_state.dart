part of 'tasks_bloc.dart';

abstract class TasksState extends Equatable {
  const TasksState();
}

class TasksInitial extends TasksState {
  @override
  List<Object> get props => [];
}

class TasksLoading extends TasksState {
  @override
  List<Object> get props => [];
}

class TasksSuccess extends TasksState {
  final List<Task> tasks;

  const TasksSuccess({required this.tasks});

  @override
  List<Object> get props => [tasks];
}

class TasksError extends TasksState {
  final String? errorMessage;

  const TasksError({this.errorMessage});

  @override
  List<Object?> get props => [errorMessage];
}

