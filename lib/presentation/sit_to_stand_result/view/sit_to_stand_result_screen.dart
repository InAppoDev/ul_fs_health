import 'package:auto_route/auto_route.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';
import '../../../core/constants/gaps.dart';
import '../../../core/extensions/number_extension.dart';
import '../../../core/themes/app_colors.dart';
import '../../../core/themes/app_text_styles.dart';
import '../../../domain/entities/result_data_entity.dart';
import '../../../gen/assets.gen.dart';
import '../../../l10n/localizations_utils.dart';
import '../../utils/widgets/simple_app_bar_widget.dart';
import '../widgets/info_widget.dart';
import '../widgets/titles_widget.dart';

@RoutePage()
class SitToStandResultScreen extends StatefulWidget {
  const SitToStandResultScreen({super.key});

  @override
  State<SitToStandResultScreen> createState() => _SitToStandResultScreenState();
}

class _SitToStandResultScreenState extends State<SitToStandResultScreen> {
  @override
  Widget build(BuildContext context) {
    return const SitToStandResultContent();
  }
}

class SitToStandResultContent extends StatelessWidget {
  const SitToStandResultContent({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ResultDataEntity> resultDataEntities = [
      const ResultDataEntity(date: '13.12.2024', time: '837', velocity: '0,32'),
      const ResultDataEntity(date: '10.12.2024', time: '712', velocity: '0,42'),
      const ResultDataEntity(date: '09.12.2024', time: '659', velocity: '0,49'),
      const ResultDataEntity(date: '06.12.2024', time: '770', velocity: '0,38'),
      const ResultDataEntity(date: '04.12.2024', time: '739', velocity: '0,32'),
      const ResultDataEntity(date: '01.12.2024', time: '825', velocity: '0,32'),
    ];

    resultDataEntities.sort((a, b) {
      final dateA = _parseDate(a.date!);
      final dateB = _parseDate(b.date!);
      return dateA.compareTo(dateB);
    });

    return Scaffold(
      appBar: const SimpleAppBarWidget(
        showBackButton: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Gaps.larger.spaceVertical,
            Container(
              height: Constants.featureTestHeaderHeight,
              decoration: BoxDecoration(
                color: ColorScheme.of(context).primary,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ColorFiltered(
                    colorFilter: ColorFilter.mode(
                        ColorScheme.of(context).onPrimary, BlendMode.srcIn),
                    child: Assets.icons.iconSitDownTest.svg(),
                  ),
                  Text(
                    appLocalizations.lblsitToStandTestTitleText.toUpperCase(),
                    style: header3.copyWith(
                      color: ColorScheme.of(context).onPrimary,
                    ),
                  ),
                ],
              ),
            ),
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
                                      final dateParts =
                                          resultDataEntities[value.toInt()]
                                              .date!
                                              .split('.');
                                      return Text(
                                        '${dateParts[0]}.${dateParts[1]}.',
                                        style: body2.copyWith(
                                          fontSize: 10,
                                          color: darkGrey,
                                        ),
                                      );
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
                                      return Text(
                                        '${resultDataEntities[value.toInt()].time} ms',
                                        style: body2.copyWith(
                                          fontSize: 10,
                                          color: darkGrey,
                                        ),
                                      );
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
                            barGroups: resultDataEntities.map((data) {
                              final time = double.parse(data.time!);
                              return BarChartGroupData(
                                x: resultDataEntities.indexOf(data),
                                barRods: [
                                  BarChartRodData(
                                    toY: time / 1000,
                                    color: darkGrey,
                                    width: Constants.barChartRodDataWidth,
                                    borderRadius: BorderRadius.zero,
                                  ),
                                ],
                              );
                            }).toList(),
                            barTouchData: BarTouchData(
                              enabled: false,
                            ),
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
              return InfoWidget(
                date: data.date!,
                time: '${data.time} ms',
                velocity: '${data.velocity} m/s',
              );
            }),
          ],
        ),
      ),
    );
  }

  DateTime _parseDate(String date) {
    final dateParts = date.split('.');
    return DateTime.parse('${dateParts[2]}-${dateParts[1]}-${dateParts[0]}');
  }
}
