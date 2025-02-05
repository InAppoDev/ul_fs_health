import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../core/constants/constants.dart';
import '../../../core/extensions/number_extension.dart';
import '../../../core/themes/app_colors.dart';
import '../../../core/themes/app_text_styles.dart';
import '../../../domain/entities/result_data_entity.dart';
import '../../../domain/entities/walk_result_entity.dart';

class ResultChartWidget extends StatelessWidget {
  const ResultChartWidget({
    super.key,
    this.resultDataEntity,
    this.walkDataEntity,
    this.useWalkData = false,
  });

  final List<ResultDataEntity>? resultDataEntity;
  final List<WalkResultEntity>? walkDataEntity;
  final bool useWalkData;

  @override
  Widget build(BuildContext context) {
    final selectedData = useWalkData ? walkDataEntity : resultDataEntity;

    if (selectedData == null || selectedData.isEmpty) {
      return const SizedBox();
    }

    return SizedBox(
      height: Constants.chartHeight,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SizedBox(
          width: selectedData.length * 60,
          child: BarChart(
            BarChartData(
              gridData: const FlGridData(show: false),
              titlesData: FlTitlesData(
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    getTitlesWidget: (value, meta) {
                      if (value >= 0 && value < selectedData.length) {
                        bool isWorstCase = false;

                        if (useWalkData) {
                          final walkData =
                              selectedData[value.toInt()] as WalkResultEntity;
                          final distance = walkData.distance;
                          if (distance != null) {
                            final maxDistance = selectedData
                                .map((d) =>
                                    (d as WalkResultEntity).distance ?? 0)
                                .reduce((a, b) => a > b ? a : b);

                            isWorstCase = distance == maxDistance;
                            final formattedDate =
                                DateFormat('dd.MM.').format(walkData.date!);
                            return Text(
                              formattedDate,
                              style: body2.copyWith(
                                fontSize: 10,
                                color: isWorstCase
                                    ? ColorScheme.of(context).primary
                                    : darkGrey,
                              ),
                            );
                          }
                        } else {
                          final resultData =
                              selectedData[value.toInt()] as ResultDataEntity;
                          final resultTime = resultData.resultTime;
                          if (resultTime != null) {
                            final maxResultTime = selectedData
                                .map((d) =>
                                    (d as ResultDataEntity).resultTime ?? 0)
                                .reduce((a, b) => a > b ? a : b);

                            isWorstCase = resultTime == maxResultTime;
                            final formattedDate =
                                DateFormat('dd.MM.').format(resultData.date!);
                            return Text(
                              formattedDate,
                              style: body2.copyWith(
                                fontSize: 10,
                                color: isWorstCase
                                    ? ColorScheme.of(context).primary
                                    : darkGrey,
                              ),
                            );
                          }
                        }
                      }
                      return const SizedBox();
                    },
                  ),
                ),
                topTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    getTitlesWidget: (value, meta) {
                      if (value >= 0 && value < selectedData.length) {
                        if (useWalkData) {
                          final walkData =
                              selectedData[value.toInt()] as WalkResultEntity;
                          final distance = walkData.distance;
                          if (distance != null) {
                            final maxDistance = selectedData
                                .map((d) =>
                                    (d as WalkResultEntity).distance ?? 0)
                                .reduce((a, b) => a > b ? a : b);

                            final isWorstCase = distance == maxDistance;

                            final formattedDistance =
                                distance.toStringAsFixed(0);
                            return Text(
                              '$formattedDistance m',
                              style: body2.copyWith(
                                fontSize: 10,
                                color: isWorstCase
                                    ? ColorScheme.of(context).primary
                                    : darkGrey,
                              ),
                            );
                          }
                        } else {
                          final resultData =
                              selectedData[value.toInt()] as ResultDataEntity;
                          final resultTime = resultData.resultTime;
                          if (resultTime != null) {
                            final maxResultTime = selectedData
                                .map((d) =>
                                    (d as ResultDataEntity).resultTime ?? 0)
                                .reduce((a, b) => a > b ? a : b);

                            final isWorstCase = resultTime == maxResultTime;

                            final formattedTime =
                                (resultTime * 1000).toPrettyResultTime();
                            return Text(
                              formattedTime,
                              style: body2.copyWith(
                                fontSize: 10,
                                color: isWorstCase
                                    ? ColorScheme.of(context).primary
                                    : darkGrey,
                              ),
                            );
                          }
                        }
                      }
                      return const SizedBox();
                    },
                  ),
                ),
                leftTitles: const AxisTitles(),
                rightTitles: const AxisTitles(),
              ),
              borderData: FlBorderData(
                show: true,
                border: Border(
                  bottom: BorderSide(
                    color: darkGrey,
                    width: Constants.flBorderDataWidth,
                  ),
                ),
              ),
              maxY: selectedData.isNotEmpty
                  ? (selectedData
                          .map((data) => useWalkData
                              ? (data as WalkResultEntity).distance ?? 0
                              : (data as ResultDataEntity).resultTime ?? 0)
                          .reduce((a, b) => a > b ? a : b)) /
                      1000
                  : 1,
              barGroups: selectedData.map((data) {
                final index = selectedData.indexOf(data);
                final isWorstCase = useWalkData
                    ? (data as WalkResultEntity).distance ==
                        selectedData
                            .map((d) => (d as WalkResultEntity).distance ?? 0)
                            .reduce((a, b) => a > b ? a : b)
                    : (data as ResultDataEntity).resultTime ==
                        selectedData
                            .map((d) => (d as ResultDataEntity).resultTime ?? 0)
                            .reduce((a, b) => a > b ? a : b);

                final value = useWalkData
                    ? double.tryParse(
                        (data as WalkResultEntity).distance?.toString() ?? '0')
                    : double.tryParse(
                        (data as ResultDataEntity).resultTime?.toString() ??
                            '0');

                return BarChartGroupData(
                  x: index,
                  barRods: [
                    BarChartRodData(
                      toY: value == null ? 0 : value / 1000,
                      color: isWorstCase
                          ? ColorScheme.of(context).primary
                          : darkGrey,
                      width: Constants.barChartRodDataWidth,
                      borderRadius: BorderRadius.zero,
                    ),
                  ],
                );
              }).toList(),
              barTouchData: BarTouchData(enabled: false),
            ),
          ),
        ),
      ),
    );
  }
}
