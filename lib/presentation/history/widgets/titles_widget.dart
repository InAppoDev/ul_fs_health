import 'package:flutter/material.dart';
import '../../../core/themes/app_text_styles.dart';

class TitlesWidget extends StatelessWidget {
  const TitlesWidget({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: header1.copyWith(fontSize: 14),
    );
  }
}
