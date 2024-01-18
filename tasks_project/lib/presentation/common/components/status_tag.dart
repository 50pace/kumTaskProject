import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tasks_project/data/model/status_dto/status_dto.dart';
import 'package:tasks_project/presentation/common/constants.dart';

class StatusTag extends StatelessWidget {
  final Status status;
  const StatusTag({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(TPMargins.margin8),
        child:
        Container(
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(TPMargins.margin7)),
              color: getTagColor(status, false)
          ),
          height: 25,
          padding: const EdgeInsets.fromLTRB(TPMargins.margin10, TPMargins.margin0, TPMargins.margin10, TPMargins.margin0),
          alignment: Alignment.center,

          child:
          Text(
            status.name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: TPMargins.margin12,
              color: getTagColor(status,true),
            ),
          ),
        )

    );
  }
  Color getTagColor(Status status, bool isTitle) {
    switch (status) {
      case Status.inProgress:
        return isTitle ? TPColors.mediumTagTitle : TPColors.mediumTagBackground;
      case Status.done:
        return isTitle ? TPColors.lowTagTitle : TPColors.lowTagBackground;
      default:
        return isTitle ? Colors.grey : Colors.black;
    }
  }

}
