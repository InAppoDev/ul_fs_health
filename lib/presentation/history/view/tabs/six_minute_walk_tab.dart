import 'package:flutter/material.dart';

import '../../../../core/constants/gaps.dart';
import '../../../../core/extensions/number_extension.dart';
import '../../../../core/themes/app_text_styles.dart';
import '../../../../domain/entities/walk_result_entity.dart';
import '../../../../l10n/localizations_utils.dart';
import '../../widgets/info_widget.dart';
import '../../widgets/result_chart_widget.dart';
import '../../widgets/titles_widget.dart';

class SixMinuteWalkTab extends StatelessWidget {
  const SixMinuteWalkTab({super.key, required this.walkDataEntities});
  final List<WalkResultEntity> walkDataEntities;

  @override
  Widget build(BuildContext context) {
    final worstDistanceData = walkDataEntities
        .reduce((a, b) => (a.distance ?? 0) > (b.distance ?? 0) ? a : b);
    final worstAverageSpeedData = walkDataEntities.reduce(
        (a, b) => (a.averageSpeed ?? 0) > (b.averageSpeed ?? 0) ? a : b);
    final worstValue = (worstDistanceData.distance ?? 0) >
            (worstAverageSpeedData.averageSpeed ?? 0)
        ? worstDistanceData
        : worstAverageSpeedData;

    return SingleChildScrollView(
      child: Column(
        children: [
          Center(
            child: Padding(
              padding: Gaps.largest.paddingTop,
              child: Column(
                children: [
                  Padding(
                    padding: Gaps.largest.paddingLeft,
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        appLocalizations.lblMyResults.toUpperCase(),
                        style: body1,
                      ),
                    ),
                  ),
                  Gaps.largest.spaceVertical,
                  ResultChartWidget(
                    walkDataEntity: walkDataEntities,
                    useWalkData: true,
                  ),
                  Gaps.larger.spaceVertical,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TitlesWidget(title: appLocalizations.lblDate),
                      TitlesWidget(
                        title: appLocalizations.lblDistance.toUpperCase(),
                      ),
                      TitlesWidget(
                        title: appLocalizations.lblAverageSpeed.toUpperCase(),
                      ),
                    ],
                  ),
                  ...walkDataEntities.map(
                    (data) {
                      final formattedDistance = data.distance != null
                          ? '${data.distance?.toStringAsFixed(2).replaceAll('.', ',')} m'
                          : '0,00 m';
                      final averageSpeed = data.averageSpeed != null
                          ? '${data.averageSpeed?.toStringAsFixed(2).replaceAll('.', ',')} km/h'
                          : '0,00 km/h';

                      final isWorst = data == worstValue;
                      return InfoWidget(
                        date: data.date?.toIso8601String() ?? '',
                        time: formattedDistance,
                        avgSpeed: averageSpeed,
                        color: isWorst
                            ? ColorScheme.of(context).primary
                            : ColorScheme.of(context).onSecondary,
                      );
                    },
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
