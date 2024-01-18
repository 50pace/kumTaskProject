import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasks_project/data/di/data_service_locator.dart';
import 'package:tasks_project/presentation/common/constants.dart';
import 'package:tasks_project/presentation/tasks/tasks_bloc/tasks_bloc.dart';
import 'package:tasks_project/presentation/tasks/tasks_widgets/no_tasks_placeholder.dart';
import 'package:tasks_project/presentation/tasks/tasks_widgets/tasks_error_placeholder.dart';
import 'package:tasks_project/presentation/tasks/tasks_widgets/tasks_list.dart';

class _TasksInProgressState extends State<TasksInProgress> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TasksBloc>(
      create: (context) {
        final service = serviceLocator.get<TasksBloc>();
        service.add(const TasksInProgressEvent());
        return service;
      },
      child: BlocConsumer<TasksBloc, TasksState>(
          listener: (context, state) {},
          builder: (BuildContext context, TasksState state) {
            if (state is TasksLoading) {
              return const CircularProgressIndicator(
                strokeWidth: 3.0,
                valueColor:
                    AlwaysStoppedAnimation<Color>(TPColors.primaryButton),
              );
            } else if (state is TasksSuccess) {
              return state.tasks.isEmpty
                  ? const NoTasksPlaceholder()
                  : TasksList(
                      tasks: state.tasks,
                      callback: () {
                        context
                            .read<TasksBloc>()
                            .add(const TasksInProgressEvent());
                      },
                    );
            } else if (state is TasksError) {
              return TasksErrorPlaceholder(
                  errorMessage: state.errorMessage ?? '');
            } else {
              return const NoTasksPlaceholder();
            }
          }),
    );
  }
}

class TasksInProgress extends StatefulWidget {
  const TasksInProgress({super.key});

  @override
  State<TasksInProgress> createState() => _TasksInProgressState();
}
