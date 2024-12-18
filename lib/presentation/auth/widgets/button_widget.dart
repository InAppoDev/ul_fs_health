// ignore_for_file: inference_failure_on_function_return_type

import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
    required this.onPressed,
    required this.title,
    required this.backgroundColor,
    required this.titleColor,
  });

  final Function() onPressed;
  final String title;
  final Color backgroundColor;
  final Color titleColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: titleColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Constants.containerBorderRadius),
          ),
        ),
        child: Text(title),
      ),
    );
  }
}
