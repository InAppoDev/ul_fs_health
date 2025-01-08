import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/constants/gaps.dart';
import '../../../../../../core/extensions/number_extension.dart';
import '../../../../../../core/extensions/string_extension.dart';
import '../../../../../../core/router/questionnaire_router.dart';
import '../../../../../../core/themes/app_colors.dart';
import '../../../../../../core/themes/app_text_styles.dart';
import '../../../../../../l10n/localizations_utils.dart';
import '../../../../../simple_view/auth/widgets/auth_guard_widget.dart';
import '../../../../../utils/widgets/simple_app_bar_widget.dart';
import '../../../../../utils/widgets/submit_button.dart';

@RoutePage()
class GPAQInitialScreen extends StatelessWidget {
  const GPAQInitialScreen({super.key, this.shouldAuthenticate = false});


  final bool shouldAuthenticate;
  @override
  Widget build(BuildContext context) {
    return GPAQInitialContent(shouldAuthenticate: shouldAuthenticate);
  }
}

class GPAQInitialContent extends StatelessWidget {
  const GPAQInitialContent({super.key, required this.shouldAuthenticate});

  final bool shouldAuthenticate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: Gaps.largest.paddingAll,
        child: Row(
          spacing: Gaps.large,
          children: [
            Expanded(child: SubmitButton(
                onPressed: () {},
                title: appLocalizations.btnBackActionText,
                backgroundColor: ColorScheme.of(context).secondary,
                titleColor: ColorScheme.of(context).onSecondary)),
            Expanded(child: SubmitButton(
                onPressed: () {},
                title: appLocalizations.btnNextActionText,
                backgroundColor: ColorScheme.of(context).primary,
                titleColor: ColorScheme.of(context).onPrimary))
          ],
        ),
      ),
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
                    Text(appLocalizations.gpaqInitialHeaderText, style: header1.copyWith(
                        decoration: TextDecoration.underline,
                        fontSize: 20, fontWeight: FontWeight.w700, height: 1.4, letterSpacing: -2
                    ),),
                    Gaps.larger.spaceVertical,
                    Text(appLocalizations.gpaqInitialDescription1,style: body1, textAlign: TextAlign.justify),
                    Gaps.medium.spaceVertical,
                    Text(appLocalizations.gpaqInitialDescription2,style: body1, textAlign: TextAlign.justify),
                    Gaps.medium.spaceVertical,
                    Text(appLocalizations.gpaqInitialDescription3,style: body1, textAlign: TextAlign.justify),
                    Gaps.medium.spaceVertical,
                  ],
                ),
              ),
            )
        ),
      ),
    );
  }
}
