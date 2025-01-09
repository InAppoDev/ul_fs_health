import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/gaps.dart';
import 'submit_button.dart';

class RowActionsWidget extends StatelessWidget {

  const RowActionsWidget({super.key,
    required this.leftTitle,
    required this.rightTitle,
    required this.onLeftPress,
    required this.onRightPress,
    required this.leftTitleColor,
    required this.rightTitleColor,
    required this.leftBackgroundColor,
    required this.rightBackgroundColor,
    this.isLeftLoading = false,
    this.isRightLoading = false,
    this.isLeftValid = true,
    this.isRightValid = true,
    this.contentPadding,
    this.spacing
  });

  final bool isLeftLoading;
  final bool isLeftValid;
  final bool isRightLoading;
  final bool isRightValid;
  final String leftTitle;
  final String rightTitle;
  final Color leftTitleColor;
  final Color rightTitleColor;
  final Color leftBackgroundColor;
  final Color rightBackgroundColor;
  final VoidCallback onLeftPress;
  final VoidCallback onRightPress;
  final EdgeInsets? contentPadding;
  final double? spacing;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: contentPadding ?? EdgeInsets.zero,
      child: Row(
        spacing: spacing ?? Gaps.large,
        children: [
          Expanded(child: SubmitButton(
              isLoading: isLeftLoading,
              isValid: isLeftValid,
              onPressed: onLeftPress,
              title: leftTitle,
              backgroundColor: leftBackgroundColor,
              titleColor: leftTitleColor)),
          Expanded(child: SubmitButton(
              isLoading: isRightLoading,
              isValid: isRightValid,
              onPressed: onRightPress,
              title: rightTitle,
              backgroundColor: rightBackgroundColor,
              titleColor: rightTitleColor))
        ],
      ),
    );
  }
}