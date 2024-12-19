import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';
import '../../../core/extensions/number_extension.dart';
import '../../../core/themes/app_colors.dart';

class TextInputWidget extends StatelessWidget {
  const TextInputWidget({
    super.key,
    required this.controller,
    required this.hintText,
    this.errorText,
    this.onFocusChange,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.validator,
    this.textStyle,
  });

  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final String? errorText;
  final void Function(bool)? onFocusChange;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Focus(
          onFocusChange: onFocusChange,
          child: TextFormField(
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
              errorBorder: OutlineInputBorder(
                  borderRadius: Constants.containerBorderRadius.radiusAll,
                  borderSide: BorderSide(color: lightColorScheme.error),
              ),
              focusedErrorBorder: OutlineInputBorder(
                  borderRadius: Constants.containerBorderRadius.radiusAll,
                  borderSide: const BorderSide(color: lightGrey),
              ),
              errorText: errorText
            ),
          ),
        ),
      ],
    );
  }
}
