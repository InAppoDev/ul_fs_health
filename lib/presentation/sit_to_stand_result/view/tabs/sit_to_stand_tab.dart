import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/constants/gaps.dart';
import '../../../../core/extensions/number_extension.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_text_styles.dart';
import '../../../../domain/entities/result_data_entity.dart';
import '../../../../l10n/localizations_utils.dart';
import '../../widgets/info_widget.dart';
import '../../widgets/titles_widget.dart';

class SitToStandTab extends StatelessWidget {
  const SitToStandTab({super.key, required this.resultDataEntities});

  final List<ResultDataEntity> resultDataEntities;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: Gaps.larger.paddingHorizontal + Gaps.largest.paddingTop,
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    appLocalizations.menuResultsText.toUpperCase(),
                    style: body1,
                  ),
                ),
                Gaps.largest.spaceVertical,
                SizedBox(
                  height: Constants.chartHeight,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: SizedBox(
                      width: resultDataEntities.length * 60,
                      child: BarChart(
                        BarChartData(
                          gridData: const FlGridData(show: false),
                          titlesData: FlTitlesData(
                            bottomTitles: AxisTitles(
                              sideTitles: SideTitles(
                                showTitles: true,
                                getTitlesWidget: (value, meta) {
                                  if (value >= 0 &&
                                      value < resultDataEntities.length) {
                                    final date =
                                        resultDataEntities[value.toInt()].date;
                                    if (date != null) {
                                      final formattedDate =
                                          DateFormat('dd.MM.').format(date);
                                      return Text(
                                        formattedDate,
                                        style: body2.copyWith(
                                          fontSize: 10,
                                          color: darkGrey,
                                        ),
                                      );
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
                                  if (value >= 0 &&
                                      value < resultDataEntities.length) {
                                    final resultTime =
                                        resultDataEntities[value.toInt()]
                                            .resultTime;
                                    if (resultTime != null) {
                                      return Text(
                                        '$resultTime ms',
                                        style: body2.copyWith(
                                          fontSize: 10,
                                          color: darkGrey,
                                        ),
                                      );
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
                          maxY: resultDataEntities.isNotEmpty
                              ? (resultDataEntities
                                      .map((data) => data.resultTime ?? 0)
                                      .reduce((a, b) => a > b ? a : b)) /
                                  1000
                              : 1,
                          barGroups: resultDataEntities.map((data) {
                            final time = double.tryParse(
                                data.resultTime?.toString() ?? '0');
                            return BarChartGroupData(
                              x: resultDataEntities.indexOf(data),
                              barRods: [
                                BarChartRodData(
                                  toY: time == null ? 0 : time / 1000,
                                  color: darkGrey,
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
                ),
              ],
            ),
          ),
          Gaps.larger.spaceVertical,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TitlesWidget(title: appLocalizations.lblDate),
              TitlesWidget(title: appLocalizations.lblTime),
              TitlesWidget(title: appLocalizations.lblVelocity),
            ],
          ),
          ...resultDataEntities.map((data) {
            final formattedTime = '${data.resultTime} ms';
            final formattedVelocity = data.velocity != null
                ? '${data.velocity?.toStringAsFixed(2).replaceAll('.', ',')} m/s'
                : '0,00 m/s';
            return InfoWidget(
              date: data.date?.toIso8601String() ?? '',
              time: formattedTime,
              velocity: formattedVelocity,
            );
          }),
        ],
      ),
    );
  }
}
