import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';
import '../../../core/extensions/number_extension.dart';
import '../../../core/themes/app_colors.dart';

class TextInputWidget extends StatelessWidget {
  const TextInputWidget({
    super.key,
    required this.controller,
    required this.hintText,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.validator,
    this.textStyle,
  });

  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          controller: controller,
          obscureText: obscureText,
          keyboardType: keyboardType,
          validator: validator,
          style: textStyle,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(color: darkGrey),
            border: OutlineInputBorder(
              borderRadius: Constants.containerBorderRadius.radiusAll,
              borderSide: const BorderSide(color: lightGrey),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: Constants.containerBorderRadius.radiusAll,
              borderSide: const BorderSide(color: lightGrey),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: Constants.containerBorderRadius.radiusAll,
              borderSide: const BorderSide(color: lightGrey),
            ),
          ),
        ),
      ],
    );
  }
}
