import 'package:flutter/material.dart';
import 'package:tasks_project/presentation/common/constants.dart';

class TPTextField extends StatelessWidget {
  final String title;
  final String placeHolder;
  final bool isPassword;
  final bool isValid;
  final String errorText;
  final void Function(String)? onChanged;

  final TextEditingController controller;
  final double height;

  const TPTextField(
      {super.key,
      this.title = '',
      required this.placeHolder,
      required this.controller,
      this.height = TPMargins.margin20,
      this.isPassword = false,
      this.isValid = true,
      this.errorText = '',
      this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          textAlign: TextAlign.start,
          // maxLines: null,
          controller: controller,
          obscureText: isPassword,
          decoration: InputDecoration(
            contentPadding:
                EdgeInsets.symmetric(vertical: height, horizontal: 10),
            filled: true,
            fillColor: TPColors.secondaryBackground,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(TPMargins.margin12),
              borderSide: BorderSide(
                  color: isValid ? Colors.grey : Colors.red, width: 1.5),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                  color: isValid ? Colors.purple : Colors.red, width: 1.5),
            ),
            hintText: placeHolder,
            labelText: title,
          ),
          onChanged: onChanged,
        ),
        if (!isValid)
          SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(TPMargins.margin10,
                    TPMargins.margin5, TPMargins.margin0, TPMargins.margin0),
                child: Text(
                  errorText,
                  style: const TextStyle(color: Colors.red),
                ),
              )),
      ],
    );
  }
}
