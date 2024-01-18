part of 'tasks_bloc.dart';

abstract class TasksEvent extends Equatable {
  const TasksEvent();

  @override
  List<Object?> get props => throw UnimplementedError();
}

class TasksInProgressEvent extends TasksEvent {
  const TasksInProgressEvent();

  @override
  List<Object?> get props => throw UnimplementedError();
}

class DoneTasksEvent extends TasksEvent {
  const DoneTasksEvent();

  @override
  List<Object?> get props => throw UnimplementedError();
}
