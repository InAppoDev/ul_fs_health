import 'package:flutter/material.dart';

import '../../../core/constants/gaps.dart';
import '../../../core/extensions/number_extension.dart';
import '../../../core/themes/app_text_styles.dart';

class InfoWidget extends StatelessWidget {
  const InfoWidget({
    super.key,
    this.color = Colors.black,
    required this.date,
    required this.time,
    required this.velocity, 
  });

  final Color? color;
  final String date;
  final String time;
  final String velocity;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: Gaps.larger.paddingTop + Gaps.medium.paddingBottom,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                date,
                style: body4.copyWith(fontSize: 14),
              ),
              Text(
                time,
                style: body4.copyWith(fontSize: 14),
              ),
              Text(
                velocity,
                style: body4.copyWith(fontSize: 14),
              ),
            ],
          ),
        ),
        Padding(
          padding: Gaps.larger.paddingHorizontal,
          child: Divider(
            color: ColorScheme.of(context).tertiary,
          ),
        )
      ],
    );
  }
}
