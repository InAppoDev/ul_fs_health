import 'package:flutter/material.dart';

extension LocaleExtension on Locale {
  String toValue() {
    return switch (languageCode) {
      'en' => 'English',
      _ => 'Slovenian',
    };
  }
}
