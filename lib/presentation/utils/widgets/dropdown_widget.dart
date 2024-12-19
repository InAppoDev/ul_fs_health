import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';
import '../../../core/constants/gaps.dart';
import '../../../core/extensions/number_extension.dart';
import '../../../core/themes/app_colors.dart';

class DropdownWidget<T> extends StatelessWidget {
  const DropdownWidget(
      {super.key,
      required this.values,
      this.selectedValue,
      this.onChanged,
      this.onTap,
      this.validator,
      this.placeholder = '',
      this.errorText});

  final List<T> values;
  final T? selectedValue;
  final String? errorText;
  final String placeholder;
  final String? Function(T?)? validator;
  final VoidCallback? onTap;
  final void Function(T?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      DropdownButtonFormField<T>(
          onTap: onTap,
          autovalidateMode: AutovalidateMode.onUnfocus,
          validator: validator,
          hint: Text(placeholder),
          decoration: InputDecoration(
            errorText: errorText,
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
          ),
          borderRadius: Constants.containerBorderRadius.radiusAll,
          isExpanded: true,
          value: selectedValue,
          onChanged: (newValue) {
            if (onChanged != null) {
              onChanged!(newValue);
            }
          },
          items: values.map((T option) {
            return DropdownMenuItem<T>(value: option, child: Text(option.toString()));
          }).toList()),
    ]);
  }
}
