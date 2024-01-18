import 'package:flutter/material.dart';
import 'package:tasks_project/presentation/common/constants.dart';

class TPButton extends StatelessWidget {
  final VoidCallback onClick;
  final String title;
  final bool isLoading;
  final Color color;
  final Color titleColor;
  final double titleSize = TPMargins.margin18;

  const TPButton(
      {super.key,
      required this.onClick,
      required this.title,
      this.isLoading = false,
      required this.color,
      required this.titleColor});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onClick,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(color),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(TPMargins.margin15),
          ),
        ),
      ),
      child: Container(
          width: double.infinity,
          height: TPMargins.margin60,
          alignment: Alignment.center,
          child: isLoading
              ? const CircularProgressIndicator(
                  strokeWidth: TPMargins.margin3,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                )
              : Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: titleColor,
                    fontSize: TPMargins.margin18,
                    // You can set the font family here if needed
                  ),
                )),
    );
  }
}
