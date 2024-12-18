
import 'package:flutter/material.dart';

import '../../gen/fonts.gen.dart';
import 'app_colors.dart';

class FontHelper {
  static TextStyle get headerText => const TextStyle(
    color: defaultTextColor,
    fontWeight: FontWeight.w600,
    fontSize: 16,
    height: 1.5,
    fontFamily: FontFamily.inter
  );

  static TextStyle get contentText => const TextStyle(
      color: defaultTextColor,
      fontWeight: FontWeight.w400,
      fontSize: 14,
      height: 1.5,
      fontFamily: FontFamily.inter
  );
  static TextStyle get defaultBtnText => const TextStyle(
      color: white,
      fontWeight: FontWeight.w500,
      fontSize: 14,
      height: 1.4,
      fontFamily: FontFamily.inter
  );
}
