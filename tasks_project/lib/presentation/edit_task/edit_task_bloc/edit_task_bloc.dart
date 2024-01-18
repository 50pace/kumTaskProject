import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:tasks_project/data/model/edit_task_dto/edit_task_dto.dart';
import 'package:tasks_project/domain/use_case/tasks/tasks_uce_cases/delete_task_use_case.dart';
import 'package:tasks_project/domain/use_case/tasks/tasks_uce_cases/edit_task_use_case.dart';

part 'edit_task_event.dart';
part 'edit_task_state.dart';

class EditTaskBloc extends Bloc<EditTaskEvent, EditTaskState> {
  final DeleteTaskUseCase deleteTaskUseCase;
  final EditTaskUseCase editTaskUseCase;

  EditTaskBloc(this.deleteTaskUseCase, this.editTaskUseCase) : super(EditTaskInitial()) {
    on<PatchTaskEvent>((event, emit) {
      editTask(event.task);
    });

    on<DeleteTaskEvent>((event, emit) {
      deleteTask(event.taskId);
    });

  }

  void editTask(EditTaskDto task) async {
    try {
      emit(EditTaskLoading());
      await editTaskUseCase.editTask(task);
      emit(EditTaskSuccess());
    } on Exception catch(e) {
      emit(EditTaskError(e.toString()));
    }
  }

  void deleteTask(String taskId) async {
    try {
      emit(DeleteTaskLoading());
      await deleteTaskUseCase.deleteTask(taskId);
      emit(DeleteTaskSuccess());
    } on Exception catch(e) {
      emit(EditTaskError(e.toString()));
    }
  }
}
