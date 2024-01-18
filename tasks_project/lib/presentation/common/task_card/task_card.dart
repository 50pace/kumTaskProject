import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tasks_project/domain/entities/task/task.dart';
import 'package:tasks_project/presentation/common/components/priority_tag.dart';
import 'package:tasks_project/presentation/common/constants.dart';

class TaskCard extends StatelessWidget {
  final Task task;

  const TaskCard({super.key, required this.task});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: TPColors.secondaryBackground,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(TPMargins.margin15),
        side: const BorderSide(color: TPColors.primaryBorder, width: 1.0),
      ),
      margin: const EdgeInsets.all(TPMargins.margin8),
      child: ListTile(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              task.title,
              style: const TextStyle(
                  fontWeight: FontWeight.bold
              ),
            ),
            PriorityTag(priority: task.priority),
          ],
        ),
        subtitle: SizedBox(
          height: TPMargins.margin65,
          width: double.infinity,
          child: Text(
              task.description,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }
}
