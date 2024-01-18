import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tasks_project/presentation/common/components/tp_button.dart';
import 'package:tasks_project/presentation/common/constants.dart';

class TPPopup extends StatelessWidget {

  final VoidCallback onSubmitClick;
  final VoidCallback? onCancelClick;

  final String title;
  final String message;
  final String submitTitle;
  final String? cancelTitle;

  final Color submitColor;
  final Color? cancelColor;

  TPPopup({super.key,
    required this.onSubmitClick,
    this.onCancelClick,
    required this.title,
    required this.message,
    required this.submitTitle,
    this.cancelTitle,
    required this.submitColor,
    this.cancelColor,
});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: TPMargins.margin18
              ),
          )
        ],
      ),
      content: SizedBox(
        height: TPMargins.margin40,
        width: TPMargins.margin300,
        child: Column(
          children: [
            Text(
                message,
                textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      actions: <Widget>[
        Row(
          mainAxisAlignment: checkSecondButton() ? MainAxisAlignment.spaceBetween : MainAxisAlignment.center,
          children: [
            SizedBox(
              height: TPMargins.margin50,
              width: TPMargins.margin120,
              child: TPButton(
                  onClick: onSubmitClick,
                  title: submitTitle,
                  color: submitColor,
                  titleColor: TPColors.secondaryBackground
              )
            ),
            if (checkSecondButton())
              SizedBox(
                  height: TPMargins.margin50,
                  width: TPMargins.margin120,
                  child: TPButton(
                      onClick: onCancelClick!,
                      title: cancelTitle!,
                      color: cancelColor!,
                      titleColor: TPColors.secondaryBackground
                  )
              )
          ],
        )
      ],
    );
  }

  bool checkSecondButton() {
    // return true if there is second button
    return cancelTitle != null && cancelColor != null && onCancelClick != null;
  }
}