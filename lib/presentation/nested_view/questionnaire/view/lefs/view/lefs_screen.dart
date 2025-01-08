import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/constants/gaps.dart';
import '../../../../../../core/extensions/number_extension.dart';
import '../../../../../../core/themes/app_text_styles.dart';
import '../../../../../../l10n/localizations_utils.dart';
import '../../../../../simple_view/auth/widgets/auth_guard_widget.dart';
import '../../../../../utils/widgets/simple_app_bar_widget.dart';


@RoutePage()
class LEFSScreen extends StatelessWidget {
  const LEFSScreen({super.key, this.shouldAuthenticate = false});

  final bool shouldAuthenticate;

  @override
  Widget build(BuildContext context) {
    return LEFSContent(shouldAuthenticate: shouldAuthenticate);
  }
}

class LEFSContent extends StatelessWidget {
  const LEFSContent({super.key, required this.shouldAuthenticate});

  final bool shouldAuthenticate;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBarWidget(
        showBackButton: shouldAuthenticate,
        onInfoPress: () {},
      ),
      body: Center(
        child: AuthGuardWidget(
          isAuthRoute: shouldAuthenticate,
            child: Center(
              child: Padding(
                padding: (Gaps.largest + Gaps.small).paddingHorizontal,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Gaps.medium.spaceVertical,
                    Text(appLocalizations.lefsHeaderText, style: header1.copyWith(fontSize: 16, height: 1.5)),
                    (Gaps.medium + Gaps.smaller).spaceVertical,
                    RichText(text: TextSpan(
                      children: [
                        TextSpan(
                          text: '${appLocalizations.lefsDescription2}\n\n', style: body1
                        ),
                        TextSpan(
                            text: appLocalizations.lefsDescription3, style: body1
                        ),
                        TextSpan(
                            text: appLocalizations.lefsDescription4, style: body1.copyWith(fontWeight: FontWeight.w700)
                        ),
                        TextSpan(
                            text: appLocalizations.lefsDescription5, style: body1
                        ),
                        TextSpan(
                            text: appLocalizations.lefsDescription6, style: body1.copyWith(fontWeight: FontWeight.w700)
                        ),
                        TextSpan(
                            text: appLocalizations.lefsDescription7, style: body1
                        ),

                      ]
                    ))
                  ],
                ),
              ),
            )
        ),
      ),
    );
  }
}
