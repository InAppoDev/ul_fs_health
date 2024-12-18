import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

enum ValidateMode {
  valueChange,
  focusChange
}


class CustomTextField extends StatefulWidget {

  const CustomTextField({super.key,
    this.readOnly = false,
    this.obscureText = false,
    this.onFocusChange,
    this.hintStyle,
    this.validator,
    this.errorStyle,
    this.validateMode = ValidateMode.focusChange,
    this.errorText,
    this.labelText,
    this.errorMaxLines,
    this.hintText,
    this.fillColor = Colors.white,
    this.contentPadding,
    this.inputFormatters,
    this.border,
    this.focusedBorder,
    this.focusNode,
    this.controller,
    this.enabledBorder,
    this.disabledBorder,
    this.errorBorder,
    this.focusedErrorBorder
  });

  final bool readOnly;
  final String? errorText;
  final TextStyle? errorStyle;
  final String? labelText;
  final Color? fillColor;
  final int? errorMaxLines;
  final FocusNode? focusNode;
  final ValidateMode validateMode;
  final void Function(bool)? onFocusChange;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;
  final bool obscureText;
  final TextEditingController? controller;
  final EdgeInsets? contentPadding;
  final InputBorder? border;
  final String? hintText;
  final TextStyle? hintStyle;
  final InputBorder? focusedBorder;
  final InputBorder? errorBorder;
  final InputBorder? disabledBorder;
  final InputBorder? enabledBorder;
  final InputBorder? focusedErrorBorder;

  @override
  State<StatefulWidget> createState() => CustomTextFieldState();

}

class CustomTextFieldState extends State<CustomTextField> {
  late final FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _focusNode = widget.focusNode ?? FocusNode();
    _focusNode.addListener(_onFocusChange);

  }

  @override
  void dispose() {
    _focusNode.removeListener(_onFocusChange);
    if (widget.focusNode == null) {
      _focusNode.dispose();
    }
    super.dispose();
  }

  void _onFocusChange() {
    if (widget.validateMode == ValidateMode.focusChange) {
      widget.onFocusChange?.call(_focusNode.hasFocus);
    }
  }


  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          obscureText: widget.obscureText,
          controller: widget.controller,
          focusNode: _focusNode,
          enabled: !widget.readOnly,
          inputFormatters: widget.inputFormatters,
          readOnly: widget.readOnly,
          decoration: InputDecoration(
              hintStyle: widget.hintStyle,
              errorMaxLines: widget.errorMaxLines,
              errorStyle: widget.errorStyle,
              labelText: widget.labelText,
              border: widget.border,
              hintText: widget.hintText,
              enabledBorder: widget.enabledBorder,
              disabledBorder: widget.disabledBorder,
              focusedBorder: widget.focusedBorder,
              focusedErrorBorder: widget.focusedErrorBorder,
              errorBorder: widget.errorBorder,
              errorText: widget.errorText,
              filled: true,
              enabled: !widget.readOnly,
              fillColor: widget.fillColor,
              contentPadding: widget.contentPadding
          ),
        ),
      ],
    );
  }
}
