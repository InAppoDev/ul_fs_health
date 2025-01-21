import 'package:flutter/material.dart';
import '../../../../core/constants/gaps.dart';
import '../../../../core/extensions/number_extension.dart';
import '../../../../core/themes/app_text_styles.dart';
import '../../../../domain/entities/result_data_entity.dart';
import '../../../../l10n/localizations_utils.dart';
import '../../widgets/info_widget.dart';
import '../../widgets/result_chart_widget.dart';
import '../../widgets/titles_widget.dart';

class SitToStandTab extends StatelessWidget {
  const SitToStandTab(
      {super.key,
      required this.resultDataEntities,
      this.padding = EdgeInsets.zero});

  final List<ResultDataEntity> resultDataEntities;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    final worstTimeData = resultDataEntities.isNotEmpty
        ? resultDataEntities
            .reduce((a, b) => (a.resultTime ?? 0) > (b.resultTime ?? 0) ? a : b)
        : null;

    final worstVelocityData = resultDataEntities.isNotEmpty
        ? resultDataEntities
            .reduce((a, b) => (a.velocity ?? 0) > (b.velocity ?? 0) ? a : b)
        : null;

    final worstValue = worstTimeData != null && worstVelocityData != null
        ? (worstTimeData.resultTime ?? 0) > (worstVelocityData.velocity ?? 0)
            ? worstTimeData
            : worstVelocityData
        : null;

    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: padding,
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    appLocalizations.lblMyResults.toUpperCase(),
                    style: body1,
                  ),
                ),
                Gaps.largest.spaceVertical,
                ResultChartWidget(
                  resultDataEntity: resultDataEntities,
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
          ...resultDataEntities.map(
            (data) {
              final formattedTime =
                  ((data.resultTime ?? 0) * 100).toStringAsFixed(0);
              final formattedVelocity = data.velocity != null
                  ? '${data.velocity?.toStringAsFixed(2).replaceAll('.', ',')} m/s'
                  : '0,00 m/s';

              final isWorst = data == worstValue;
              return InfoWidget(
                date: data.date?.toIso8601String() ?? '',
                time: '$formattedTime ms',
                velocity: formattedVelocity,
                color: isWorst
                    ? ColorScheme.of(context).primary
                    : ColorScheme.of(context).onSecondary,
              );
            },
          ),
        ],
      ),
    );
  }
}
