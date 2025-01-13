import 'dart:collection';

import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';
import '../../../core/constants/gaps.dart';
import '../../../core/extensions/number_extension.dart';
import '../../../core/themes/app_colors.dart';

class DropdownWidget<T> extends StatelessWidget {
  DropdownWidget(
      {super.key,
      required this.values,
      this.selectedValue,
      this.onChanged,
      this.onGenerateLabel,
      this.hintText,
      this.expandedPadding,
      this.hintStyle,
      this.onTap,
      this.onFocusChange,
      this.placeholder = '',
      this.errorText});

  final List<T> values;
  final T? selectedValue;
  final String? errorText;
  final String Function(T)? onGenerateLabel;
  final String placeholder;
  final String? hintText;
  final EdgeInsets? expandedPadding;
  final TextStyle? hintStyle;
  final void Function(bool)? onFocusChange;
  final VoidCallback? onTap;
  final void Function(T?)? onChanged;
  final FocusNode focusNode = FocusNode();

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Focus(
        canRequestFocus: true,
        focusNode: focusNode,
        onFocusChange: onFocusChange,
        child: DropdownMenu<T>(
          menuStyle: const MenuStyle(
            alignment: Alignment.bottomCenter
          ),
          hintText: hintText,
          keyboardType: TextInputType.none,
          inputDecorationTheme: InputDecorationTheme(
            hintStyle: hintStyle,
            contentPadding: Gaps.large.paddingHorizontal,
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
          enableSearch: false,
          errorText: errorText != null && errorText!.isNotEmpty ? errorText : null,
          requestFocusOnTap: true,
          initialSelection: selectedValue,
          expandedInsets: expandedPadding ?? EdgeInsets.zero,
          onSelected: onChanged,
          dropdownMenuEntries: UnmodifiableListView<DropdownMenuEntry<T>>(
            values.map<DropdownMenuEntry<T>>((T value) => DropdownMenuEntry<T>(
                value: value,
                label: onGenerateLabel != null ? onGenerateLabel!(value) : value.toString())),
          ),
        ),
      ),
    ]);
  }
}
