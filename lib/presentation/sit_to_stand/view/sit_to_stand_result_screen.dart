// ignore_for_file: unrelated_type_equality_checks

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/extensions/context_extension.dart';
import '../../../di/service_locator.dart';
import '../../../domain/entities/result_data_entity.dart';
import '../../../domain/repositories/sit_to_stand_repository.dart';
import '../../../gen/assets.gen.dart';
import '../../../l10n/localizations_utils.dart';
import '../../history/view/tabs/sit_to_stand_tab.dart';
import '../../logic/user/user_bloc.dart';
import '../../utils/widgets/test_layout_widget.dart';
import '../../walk_test_start/bloc/result_bloc.dart';
import '../bloc/sit_to_stand_bloc.dart';
import '../bloc/sit_to_stand_event.dart';
import '../bloc/sit_to_stand_state.dart';

@RoutePage()
class SitToStandResultScreen extends StatefulWidget {
  const SitToStandResultScreen({super.key});

  @override
  State<SitToStandResultScreen> createState() => _SitToStandResultScreenState();
}

class _SitToStandResultScreenState extends State<SitToStandResultScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<SitToStandBloc>(
      create: (_) =>
          SitToStandBloc(sitToStandRepository: getIt<SitToStandRepository>())
            ..add(
              SitToStandEvent.getTestResult(
                  userId: context.read<UserBloc>().state.user?.id ?? ''),
            ),
      child: Builder(
        builder: (context) {
          final resultDataEntities =
              context.watch<SitToStandBloc>().state.testResults ?? [];

          return SitToStandResultContent(
            resultDataEntities: resultDataEntities,
          );
        },
      ),
    );
  }
}

class SitToStandResultContent extends StatelessWidget {
  const SitToStandResultContent({super.key, required this.resultDataEntities});

  final List<ResultDataEntity> resultDataEntities;

  @override
  Widget build(BuildContext context) {
    return BlocListener<SitToStandBloc, SitToStandState>(
      listener: (context, state) {
        if (state.status == ResultStatus.failure) {
          context.showSnackBarMessage(state.error ?? '');
        }
      },
      child: TestLayoutWidget(
        isScrollable: true,
        headerIcon: Assets.icons.iconSitDownTest,
        headerText: appLocalizations.lblsitToStandTestTitleText,
        includeAuthGuard: true,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SitToStandTab(
            resultDataEntities: resultDataEntities,
          ),
        ],
      ),
    );
  }
}
