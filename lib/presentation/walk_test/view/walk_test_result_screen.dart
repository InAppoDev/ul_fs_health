import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/themes/app_text_styles.dart';
import '../../../domain/entities/walk_result_entity.dart';
import '../../../gen/assets.gen.dart';
import '../../../l10n/localizations_utils.dart';
import '../../history/view/tabs/six_minute_walk_tab.dart';
import '../../logic/user/user_bloc.dart';
import '../../utils/widgets/test_layout_widget.dart';
import '../bloc/walk_test_bloc.dart';

@RoutePage()
class WalkTestResultScreen extends StatefulWidget {
  const WalkTestResultScreen({super.key});

  @override
  State<WalkTestResultScreen> createState() => _WalkTestResultScreenState();
}

class _WalkTestResultScreenState extends State<WalkTestResultScreen> {
  @override
  void initState() {
    super.initState();
    final userId = context.read<UserBloc>().state.user?.id ?? '';
    context.read<WalkTestBloc>().add(WalkTestEvent.getWalkTestResult(userId: userId));
  }

  @override
  Widget build(BuildContext context) {
    return WalkTestResultContent(
      resultDataEntities: context.watch<WalkTestBloc>().state.walkSortedResults ?? [],
    );
  }
}

class WalkTestResultContent extends StatelessWidget {
  const WalkTestResultContent({super.key, required this.resultDataEntities});

  final List<WalkResultEntity> resultDataEntities;

  @override
  Widget build(BuildContext context) {
    return TestLayoutWidget(
        isScrollable: true,
        headerIcon: Assets.icons.iconWalkTest,
        headerText: appLocalizations.walkTestTitleText,
        includeAuthGuard: true,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BlocBuilder<WalkTestBloc, WalkTestState>(builder: (context, state) {
            if (state.status == WalkTestStatus.loading) {
              return const Center(child: CircularProgressIndicator());
            } else if (resultDataEntities.isEmpty) {
              return Center(child: Text(appLocalizations.lblNoDataFound, style: body1));
            }
            return SixMinuteWalkTab(walkDataEntities: resultDataEntities);
          })
        ]);
  }
}
