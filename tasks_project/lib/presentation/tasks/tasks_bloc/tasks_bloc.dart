import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:tasks_project/domain/entities/task/task.dart';
import 'package:tasks_project/domain/use_case/tasks/tasks_uce_cases/get_tasks_use_case.dart';

part 'tasks_event.dart';
part 'tasks_state.dart';

class TasksBloc extends Bloc<TasksEvent, TasksState> {
  final GetTasksUseCase getTasksUseCase;

  TasksBloc(this.getTasksUseCase) : super(TasksInitial()) {
    on<TasksInProgressEvent>((event, emit) {
      emitGetTasksInProgress();
    });

    on<DoneTasksEvent>((event, emit) {
      emitGetDoneTasks();
    });
  }

  void emitGetTasksInProgress() async {
    try {
      emit(TasksLoading());
      final result = await getTasksUseCase.getTasksInProgress();
      emit(TasksSuccess(tasks: result));
    } on Exception catch (e) {
      emit(TasksError(errorMessage: e.toString()));
    }
  }

  void emitGetDoneTasks() async {
    try {
      emit(TasksLoading());
      final result = await getTasksUseCase.getDoneTasks();
      emit(TasksSuccess(tasks: result));
    } on Exception catch (e) {
      emit(TasksError(errorMessage: e.toString()));
    }
  }
}
