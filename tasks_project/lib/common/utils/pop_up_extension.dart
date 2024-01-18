import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tasks_project/presentation/common/components/tp_pop_up.dart';

extension CustomPopupExtension on BuildContext {
  void showCustomPopup(
      {required VoidCallback onSubmitClick,
        VoidCallback? onCancelClick,
        required String title,
        required String message,
        required String submitTitle,
        String? cancelTitle,
        required Color submitColor,
        Color? cancelColor}
      ) {
    showDialog(
      context: this,
      builder: (BuildContext context) {
        return TPPopup(
          onSubmitClick: onSubmitClick,
          onCancelClick: onCancelClick,
          title: title,
          message: message,
          submitTitle: submitTitle,
          cancelTitle: cancelTitle,
          submitColor: submitColor,
          cancelColor: cancelColor,
        );
      },
    );
  }
}