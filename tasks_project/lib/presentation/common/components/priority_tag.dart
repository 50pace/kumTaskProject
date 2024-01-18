import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:tasks_project/data/model/priority/priority.dart';
import 'package:tasks_project/presentation/common/constants.dart';

class PriorityTag extends StatelessWidget {
  final PriorityType priority;
  const PriorityTag({super.key, required this.priority});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(TPMargins.margin8),
      child:
          Container(
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(TPMargins.margin7)),
                color: getTagColor(priority, false)
            ),
            height: 25,
            padding: const EdgeInsets.fromLTRB(TPMargins.margin10, TPMargins.margin0, TPMargins.margin10, TPMargins.margin0),
            alignment: Alignment.center,

            child:
              Text(
                priority.value,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: TPMargins.margin12,
                    color: getTagColor(priority,true),
                ),
              ),
          )

    );
  }
  Color getTagColor(PriorityType priority, bool isTitle) {
    switch (priority) {
      case PriorityType.low:
        return isTitle ? TPColors.lowTagTitle : TPColors.lowTagBackground;
      case PriorityType.medium:
        return isTitle ? TPColors.mediumTagTitle : TPColors.mediumTagBackground;
      case PriorityType.high:
        return isTitle ? TPColors.highTagTitle : TPColors.highTagBackground;
      default:
        return isTitle ? Colors.grey : Colors.black;
    }
  }

}
