import 'package:flutter/services.dart';

class NumberPadStartFormatter extends TextInputFormatter {

  NumberPadStartFormatter({this.maxLength = 2});
  final int maxLength;

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue,
      TextEditingValue newValue,
      ) {
    String text = newValue.text;

    if (text.isNotEmpty && !RegExp(r'^\d+$').hasMatch(text)) {
      return oldValue;
    }

    if (text.length == 1) {
      text = text.padLeft(maxLength, '0');
    }

    if (text.length > maxLength) {
      text = text.substring(0, maxLength);
    }

    return TextEditingValue(
      text: text,
      selection: TextSelection.collapsed(offset: text.length),
    );
  }
}
