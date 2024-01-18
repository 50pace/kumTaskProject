import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tasks_project/presentation/common/constants.dart';

class TPSnackBar {
  static showSnackBar(BuildContext context, String message, bool isError) {
    final snackBar = SnackBar(
      width: 300,
      content: Text(
          message,
          style: const TextStyle(
            fontSize: TPMargins.margin18,
            color: Colors.black
          ),
      ),
      behavior: SnackBarBehavior.floating,
      backgroundColor: isError
          ? TPColors.highTagBackground
          : TPColors.lowTagBackground,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}