import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/extensions/context_extension.dart';
import '../../../di/service_locator.dart';
import '../../../domain/entities/walk_result_entity.dart';
import '../../../domain/repositories/user_repository.dart';
import '../../../domain/repositories/walk_repository.dart';
import '../../../gen/assets.gen.dart';
import '../../../l10n/localizations_utils.dart';
import '../../history/view/tabs/six_minute_walk_tab.dart';
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
      create: (_) =>
          ResultBloc(getIt<UserRepository>(), getIt<WalkRepository>())
            ..add(const ResultEvent.getResults()),
      child: Builder(
        builder: (context) {
          final resultDataEntities = context.watch<ResultBloc>().state.results;

          return WalkTestResultContent(
            resultDataEntities: resultDataEntities,
          );
        },
      ),
    );
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
          SixMinuteWalkTab(walkDataEntities: resultDataEntities),
        ],
      ),
    );
  }
}
