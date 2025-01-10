import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../../core/constants/gaps.dart';
import '../../../core/extensions/number_extension.dart';
import '../../../core/themes/app_text_styles.dart';

class InfoWidget extends StatelessWidget {
  const InfoWidget({
    super.key,
    this.color = Colors.black,
    required this.date,
    this.time,
    this.velocity,
    this.distance,
    this.avgSpeed,
  });

  final Color? color;
  final String date;
  final String? time;
  final String? velocity;
  final String? distance;
  final String? avgSpeed;

  @override
  Widget build(BuildContext context) {
    DateTime parsedDate;
    try {
      parsedDate = DateTime.parse(date);
    } catch (e) {
      parsedDate = DateFormat('dd.MM.yyyy').parse(date);
    }

    final displayDate = DateFormat('dd.MM.yyyy').format(parsedDate);

    final List<Widget> rowChildren = [
      Text(
        displayDate,
        style: body4.copyWith(fontSize: 14, color: color),
      ),
      if (time != null)
        Text(
          time!,
          style: body4.copyWith(fontSize: 14, color: color),
        ),
      if (velocity != null)
        Text(
          velocity!,
          style: body4.copyWith(fontSize: 14, color: color),
        ),
      if (avgSpeed != null)
        Text(
          avgSpeed!,
          style: body4.copyWith(fontSize: 14, color: color),
        ),
    ];

    return Column(
      children: [
        Padding(
          padding: Gaps.larger.paddingTop + Gaps.medium.paddingBottom,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: rowChildren,
          ),
        ),
        Padding(
          padding: Gaps.larger.paddingHorizontal,
          child: Divider(
            color: Theme.of(context).colorScheme.tertiary,
          ),
        ),
      ],
    );
  }
}
