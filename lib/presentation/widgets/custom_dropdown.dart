import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/themes/app_colors.dart';

class CustomDropdown extends StatefulWidget {
  const CustomDropdown({
    super.key,
    required this.values,
    this.selectedValue,
    this.onChanged,
    this.onFocusChange,
    this.placeholder = '', this.errorText
  });

  final List<String> values;
  final String? selectedValue;
  final String? errorText;
  final String placeholder;
  final void Function(bool)? onFocusChange;
  final void Function(String?)? onChanged;

  @override
  State<CustomDropdown> createState() => CustomDropdownState();
}

class CustomDropdownState extends State<CustomDropdown> {

  late final FocusNode _focusNode = FocusNode();
  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      if (widget.onFocusChange != null) {
        widget.onFocusChange!(_focusNode.hasFocus);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            border: Border.all(color: defaultDropdownColor), // Border added here
            borderRadius: BorderRadius.circular(8), // Optional: round corners
          ),
          child: DropdownButton<String>(
                focusNode: _focusNode,
                hint: Text(widget.placeholder),
                underline: const SizedBox.shrink(),
                borderRadius: BorderRadius.circular(8),
                isExpanded: true,
                value: widget.selectedValue,
                onChanged: (newValue) {
                  if (widget.onChanged != null) {
                    widget.onChanged!(newValue);
                  }
                },
                items: widget.values.map((String option) {
                  return DropdownMenuItem<String>(
                    value: option,
                    child: Text(option));
                }).toList(),
              ),
          ),
          if (widget.errorText != null && widget.errorText!.isNotEmpty)
            Text(widget.errorText!, style: TextStyle(color: lightColorScheme.error))
      ]);
  }
}
