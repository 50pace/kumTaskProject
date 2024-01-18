import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:tasks_project/data/model/create_task_dto/create_task_dto.dart';
import 'package:tasks_project/data/model/task_dto/task_dto.dart';
import 'package:tasks_project/domain/use_case/tasks/tasks_uce_cases/create_task_use_case.dart';

part 'create_task_event.dart';
part 'create_task_state.dart';

class CreateTaskBloc extends Bloc<CreateTaskEvent, CreateTaskState> {
  final CreateTaskUseCase createTaskUseCase;

  CreateTaskBloc(this.createTaskUseCase) : super(CreateTaskInitial()) {
    on<CreateTaskEvent>((event, emit) {
      emitCreateTask(event.task);
    });
  }

  void emitCreateTask(CreateTaskDto task) async {
    try {
      emit(CreateTaskLoading());
      final result = await createTaskUseCase.createTask(task);
      emit(CreateTaskSuccess(task: result));
    } on Exception catch(e) {
      emit(CreateTaskError(errorMessage: e.toString()));
    }
  }
}
