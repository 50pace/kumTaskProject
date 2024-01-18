import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tasks_project/presentation/common/components/tp_floating_button.dart';
import 'package:tasks_project/presentation/common/constants.dart';
import 'package:tasks_project/presentation/common/router/tasks_route.dart';

class TasksErrorPlaceholder extends StatelessWidget {

  final String errorMessage;
  const TasksErrorPlaceholder({super.key, required this.errorMessage});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child:
      Padding(
        padding: const EdgeInsets.fromLTRB(TPMargins.margin20, TPMargins.margin0, TPMargins.margin20, TPMargins.margin0),
        child: Stack(
            alignment: Alignment.center,
            children: [
              Text(
                errorMessage,
                style: const TextStyle(fontSize: TPMargins.margin20),
              ),
              TPFloatingButton(
                  onClick: () {
                    context.push(TasksRoute.createTask.path);
                  },
                  title: 'Create task',
                  color: TPColors.primaryButton,
                  titleColor: Colors.white
              )
            ]
        ),
      ),
    );
  }
}
