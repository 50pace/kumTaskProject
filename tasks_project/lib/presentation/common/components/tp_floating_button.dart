import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tasks_project/presentation/common/constants.dart';

class TPFloatingButton extends StatelessWidget {

  final VoidCallback onClick;
  final String title;
  final Color color;
  final Color titleColor;
  final double titleSize = 15.0;

  const TPFloatingButton({super.key,
    required this.onClick,
    required this.title,
    required this.color,
    required this.titleColor
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Positioned(
        bottom: 16.0,
        child:
        Padding(
            padding: const EdgeInsets.fromLTRB(TPMargins.margin0, TPMargins.margin20, TPMargins.margin0, TPMargins.margin20),
            child: SizedBox (
              width: screenWidth * 0.85,
              child: FloatingActionButton(
                backgroundColor: color,
                onPressed: onClick,
                child: Text(
                  title,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: titleColor,
                      fontSize: titleSize
                  ),
                ),
              ),
            )

        )
    );
  }
}
