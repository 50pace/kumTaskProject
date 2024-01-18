import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tasks_project/domain/entities/task/task.dart';
import 'package:tasks_project/presentation/common/components/tp_floating_button.dart';
import 'package:tasks_project/presentation/common/constants.dart';
import 'package:tasks_project/presentation/common/router/tasks_route.dart';
import 'package:tasks_project/presentation/common/task_card/task_card.dart';

class TasksList extends StatelessWidget {
  final List<Task> tasks;
  final VoidCallback callback;
  const TasksList({super.key, required this.tasks, required this.callback});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: TPColors.primaryBackground,
      child: Padding(
          padding: const EdgeInsets.fromLTRB(TPMargins.margin20,
              TPMargins.margin0, TPMargins.margin20, TPMargins.margin0),
          child: Stack(
            alignment: Alignment.center,
            children: [
              ListView.builder(
                itemCount: tasks.length,
                itemBuilder: (context, index) {
                  return InkWell(
                      onTap: () async {
                        final shouldRefresh = await context.push(
                            TasksRoute.editTask.path,
                            extra: tasks[index]);
                        if (shouldRefresh != null) {
                          callback();
                        }
                      },
                      child: TaskCard(task: tasks[index]));
                },
              ),
              TPFloatingButton(
                  onClick: () async {
                    final shouldRefresh =
                        await context.push(TasksRoute.createTask.path);
                    if (shouldRefresh != null) {
                      callback();
                    }
                  },
                  title: 'Create task',
                  color: TPColors.primaryButton,
                  titleColor: Colors.white)
            ],
          )),
    );
  }
}
