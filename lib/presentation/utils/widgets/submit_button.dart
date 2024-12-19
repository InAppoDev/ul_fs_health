// ignore_for_file: inference_failure_on_function_return_type

import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';
import '../../../core/extensions/number_extension.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({
    super.key,
    required this.onPressed,
    required this.title,
    required this.backgroundColor,
    required this.titleColor,
    this.isLoading = false,
  });

  final Function() onPressed;
  final String title;
  final Color backgroundColor;
  final Color titleColor;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: isLoading
            ? null
            : () {
                FocusScope.of(context).unfocus();
                onPressed.call();
              },
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: titleColor,
          shape: RoundedRectangleBorder(
            borderRadius: Constants.containerBorderRadius.radiusAll,
          ),
        ),
        child: isLoading
            ? Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: 25,
                    height: 25,
                    child: CircularProgressIndicator(
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  )
                ],
              )
            : Text(title),
      ),
    );
  }
}
