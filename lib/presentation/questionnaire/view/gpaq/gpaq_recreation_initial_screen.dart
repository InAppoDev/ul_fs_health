import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constants/gaps.dart';
import '../../../../../core/extensions/number_extension.dart';
import '../../../../../core/themes/app_text_styles.dart';
import '../../../../../l10n/localizations_utils.dart';
import '../../../../core/router/app_router.dart';
import '../../../auth/widgets/auth_guard_widget.dart';
import '../../../utils/widgets/row_actions_widget.dart';
import '../../../utils/widgets/simple_app_bar_widget.dart';

@RoutePage()
class GPAQRecreationInitialScreen extends StatelessWidget {
  const GPAQRecreationInitialScreen({super.key, this.shouldAuthenticate = false});


  final bool shouldAuthenticate;
  @override
  Widget build(BuildContext context) {
    return GPAQRecreationInitialContent(shouldAuthenticate: shouldAuthenticate);
  }
}

class GPAQRecreationInitialContent extends StatelessWidget {
  const GPAQRecreationInitialContent({super.key, required this.shouldAuthenticate});

  final bool shouldAuthenticate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: RowActionsWidget(
          contentPadding: Gaps.largest.paddingAll,
          leftTitle: appLocalizations.btnBackActionText,
          rightTitle: appLocalizations.btnNextActionText,
          onLeftPress: () => context.router.maybePop(),
          onRightPress: () => context.router.push(GPAQRecreationRoute(shouldAuthenticate: shouldAuthenticate)),
          leftTitleColor: ColorScheme.of(context).onSecondary,
          rightTitleColor: ColorScheme.of(context).onPrimary,
          leftBackgroundColor: ColorScheme.of(context).secondary,
          rightBackgroundColor: ColorScheme.of(context).primary),
      appBar: SimpleAppBarWidget(
        showBackButton: shouldAuthenticate,
        onInfoPress: () {},
      ),
      body: Center(
        child: AuthGuardWidget(
            isAuthRoute: !shouldAuthenticate,
            child: Center(
              child: Padding(
                padding: (Gaps.largest + Gaps.small).paddingHorizontal,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Gaps.large.spaceVertical,
                    Text(appLocalizations.gpaqRecreationHeaderText, style: header1.copyWith(
                        decoration: TextDecoration.underline,
                        fontSize: 20, fontWeight: FontWeight.w700, height: 1.4, letterSpacing: -2
                    )),
                    Gaps.larger.spaceVertical,
                    Text(appLocalizations.gpaqRecreationDescription,style: body1, textAlign: TextAlign.justify),
                    Gaps.larger.spaceVertical,
                    Text(appLocalizations.gpaqRecreationDescription2,style: body1, textAlign: TextAlign.justify),
                  ],
                ),
              ),
            )
        ),
      ),
    );
  }
}
