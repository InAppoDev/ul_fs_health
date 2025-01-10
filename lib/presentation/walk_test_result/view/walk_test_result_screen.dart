import 'package:auto_route/auto_route.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/constants/constants.dart';
import '../../../core/constants/gaps.dart';
import '../../../core/extensions/context_extension.dart';
import '../../../core/extensions/date_extension.dart';
import '../../../core/extensions/number_extension.dart';
import '../../../core/extensions/unit_extension.dart';
import '../../../core/themes/app_colors.dart';
import '../../../core/themes/app_text_styles.dart';
import '../../../di/service_locator.dart';
import '../../../domain/entities/walk_result_entity.dart';
import '../../../domain/repositories/user_repository.dart';
import '../../../domain/repositories/walk_repository.dart';
import '../../../gen/assets.gen.dart';
import '../../../l10n/localizations_utils.dart';
import '../../history/widgets/info_widget.dart';
import '../../history/widgets/titles_widget.dart';
import '../../utils/widgets/test_layout_widget.dart';
import '../../walk_test_start/bloc/result_bloc.dart';

@RoutePage()
class WalkTestResultScreen extends StatefulWidget {
  const WalkTestResultScreen({super.key});

  @override
  State<WalkTestResultScreen> createState() => _WalkTestResultScreenState();
}

class _WalkTestResultScreenState extends State<WalkTestResultScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => ResultBloc(getIt<UserRepository>(), getIt<WalkRepository>())..add(const ResultEvent.getResults()),
        child: Builder(builder: (context) {
          return WalkTestResultContent(
            resultDataEntities: context.watch<ResultBloc>().state.results,
          );
        }));
  }
}

class WalkTestResultContent extends StatelessWidget {
  const WalkTestResultContent({super.key, required this.resultDataEntities});

  final List<WalkResultEntity> resultDataEntities;
  @override
  Widget build(BuildContext context) {

    return BlocListener<ResultBloc, ResultState>(
      listener: (context, state) {
        if (state.status == ResultStatus.failure) {
          context.showSnackBarMessage(state.errorText ?? '');
        }
      },
      child: TestLayoutWidget(
        isScrollable: true,
        headerIcon: Assets.icons.iconWalkTest,
        headerText: appLocalizations.walkTestTitleText,
        includeAuthGuard: true,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            if (value >= 0 && value < resultDataEntities.length) {
                              final formatted =
                                  resultDataEntities[value.toInt()].date?.formattedDateShort ?? '';
                              return Text(
                                '$formatted.',
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
                            if (value >= 0 && value < resultDataEntities.length) {
                              return Text(
                                resultDataEntities[value.toInt()].distance?.formattedDistanceMRounded ?? '',
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
                      final distance = data.distance ?? 0;
                      return BarChartGroupData(
                        x: resultDataEntities.indexOf(data),
                        barRods: [
                          BarChartRodData(
                            toY: distance / 1000,
                            color: (data.date?.isToday == true) ? ColorScheme.of(context).primary : darkGrey,
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
          Gaps.larger.spaceVertical,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TitlesWidget(title: appLocalizations.lblDate),
              Gaps.medium.spaceHorizontal,
              TitlesWidget(title: appLocalizations.lblDistance),
              TitlesWidget(title: appLocalizations.lblAverageSpeed),
            ],
          ),
          ...resultDataEntities.map((data) {
            return InfoWidget(
              color: data.date?.isToday == true ? ColorScheme.of(context).primary : defaultTextColor,
              date: data.date?.formattedDate ?? '',
              time: data.distance?.formattedDistanceMReplaced ?? '',
              velocity: data.averageSpeed?.formattedSpeedKmhReplaced ?? '',
            );
          }),
        ],
      ),
    );
  }
}
