import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/constants/gaps.dart';
import '../../../core/extensions/number_extension.dart';
import '../../../core/themes/app_text_styles.dart';
import '../../../domain/entities/result_data_entity.dart';
import '../../../generated/l10n.dart';
import '../../../l10n/localizations_utils.dart';
import '../../sit_to_stand/bloc/sit_to_stand_bloc.dart';
import '../../sit_to_stand/bloc/sit_to_stand_event.dart';
import '../../sit_to_stand/bloc/sit_to_stand_state.dart';
import '../../utils/widgets/simple_app_bar_widget.dart';
import 'tabs/sit_to_stand_tab.dart';
import 'tabs/six_minute_walk_tab.dart';

@RoutePage()
class SitToStandResultScreen extends StatefulWidget {
  const SitToStandResultScreen({super.key});

  @override
  State<SitToStandResultScreen> createState() => _SitToStandResultScreenState();
}

class _SitToStandResultScreenState extends State<SitToStandResultScreen> {
  @override
  void initState() {
    super.initState();
    final String userId = FirebaseAuth.instance.currentUser!.uid;
    context.read<SitToStandBloc>().add(GetTestResultEvent(userId: userId));
  }

  @override
  Widget build(BuildContext context) {
    return const SitToStandResultContent();
  }
}

class SitToStandResultContent extends StatelessWidget {
  const SitToStandResultContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBarWidget(
        showBackButton: true,
        title: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: appLocalizations.lblAct,
                style:
                    body5.copyWith(color: ColorScheme.of(context).onSecondary),
              ),
              TextSpan(text: appLocalizations.lblOn, style: body5),
            ],
          ),
        ),
      ),
      body: BlocBuilder<SitToStandBloc, SitToStandState>(
        builder: (context, state) {
          if (state.status == SitToStandStatus.failure) {
            return Center(child: Text('Failed to get data: ${state.error}'));
          }

          if (state.testResults != null && state.testResults!.isNotEmpty) {
            final resultDataEntities =
                List<ResultDataEntity>.from(state.testResults!);
            resultDataEntities.sort((a, b) => a.date!.compareTo(b.date!));

            return DefaultTabController(
              length: 2,
              child: Column(
                children: [
                  TabBar(
                    labelColor: Theme.of(context).colorScheme.onSurface,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicatorColor: Theme.of(context).colorScheme.onSurface,
                    dividerColor: Colors.transparent,
                    overlayColor:
                        const WidgetStatePropertyAll(Colors.transparent),
                    labelPadding: Gaps.medium.paddingAll,
                    tabs: [
                      Text(
                        S.current.sitToStandTestTitleText,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        S.current.walkTestTitleText,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        SitToStandTab(resultDataEntities: resultDataEntities),
                        const SixMinuteWalkTab(),
                      ],
                    ),
                  ),
                ],
              ),
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
