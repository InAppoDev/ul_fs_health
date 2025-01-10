import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/constants/constants.dart';
import '../../../core/constants/gaps.dart';
import '../../../core/extensions/list_extension.dart';
import '../../../core/extensions/number_extension.dart';
import '../../../core/themes/app_text_styles.dart';
import '../../../di/service_locator.dart';
import '../../../domain/repositories/sit_to_stand_repository.dart';
import '../../../domain/repositories/walk_repository.dart';
import '../../../generated/l10n.dart';
import '../../../l10n/localizations_utils.dart';
import '../../logic/user/user_bloc.dart';
import '../../sit_to_stand/bloc/sit_to_stand_bloc.dart';
import '../../sit_to_stand/bloc/sit_to_stand_event.dart';
import '../../sit_to_stand/bloc/sit_to_stand_state.dart';
import '../../utils/widgets/simple_app_bar_widget.dart';
import '../../walk_test/bloc/walk_test_bloc.dart';
import 'tabs/sit_to_stand_tab.dart';
import 'tabs/six_minute_walk_tab.dart';

@RoutePage()
class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SitToStandBloc>(
          create: (context) {
            return SitToStandBloc(
              sitToStandRepository: getIt<SitToStandRepository>(),
            )..add(
                SitToStandEvent.getTestResult(
                    userId: context.read<UserBloc>().state.user?.id ?? ''),
              );
          },
        ),
        BlocProvider<WalkTestBloc>(
          create: (context) {
            return WalkTestBloc(
              walkRepository: getIt<WalkRepository>(),
            )..add(
                WalkTestEvent.getWalkTestResult(
                    userId: context.read<UserBloc>().state.user?.id ?? ''),
              );
          },
        ),
      ],
      child: const HistoryContent(),
    );
  }
}

class HistoryContent extends StatelessWidget {
  const HistoryContent({super.key});

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
      body: DefaultTabController(
        length: Constants.defaultTabControllerLength,
        child: Column(
          children: [
            TabBar(
              labelColor: Theme.of(context).colorScheme.onSurface,
              unselectedLabelColor: Colors.red,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: Theme.of(context).colorScheme.onSurface,
              dividerColor: Colors.transparent,
              overlayColor: const WidgetStatePropertyAll(Colors.transparent),
              labelPadding: Gaps.medium.paddingAll,
              tabs: [
                Text(
                  S.current.sitToStandTestTitleText,
                  style: header2.copyWith(fontSize: 14),
                ),
                Text(
                  S.current.walkTestTitleText,
                  style: header2.copyWith(fontSize: 14),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  BlocBuilder<SitToStandBloc, SitToStandState>(
                    builder: (context, state) {
                      if (state.status == SitToStandStatus.failure) {
                        return Center(
                          child: Text('${state.error}'),
                        );
                      } else if (state.status == SitToStandStatus.loading) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      } else if (state.testResults.isNullOrEmpty) {
                        return Center(
                          child: Text(appLocalizations.lblNoDataFound),
                        );
                      }
                      return SitToStandTab(
                        resultDataEntities: state.testResults ?? [],
                      );
                    },
                  ),
                  BlocBuilder<WalkTestBloc, WalkTestState>(
                    builder: (context, walkState) {
                      if (walkState.status == WalkTestStatus.failure) {
                        return Center(
                          child: Text('${walkState.errorText}'),
                        );
                      } else if (walkState.status == WalkTestStatus.loading) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      } else if (walkState.walkResults.isNullOrEmpty) {
                        return Center(
                          child: Text(appLocalizations.lblNoDataFound),
                        );
                      }
                      return SixMinuteWalkTab(
                        walkDataEntities: walkState.walkResults ?? [],
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
