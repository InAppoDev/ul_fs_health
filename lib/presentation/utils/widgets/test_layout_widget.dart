import 'package:flutter/material.dart';

import '../../../core/constants/gaps.dart';
import '../../../core/extensions/number_extension.dart';
import '../../../core/themes/app_text_styles.dart';
import 'simple_app_bar_widget.dart';

class TestLayoutWidget extends StatelessWidget {
  const TestLayoutWidget(
      {super.key,
      required this.headerIcon,
      required this.headerText,
      required this.children,
      this.crossAxisAlignment = CrossAxisAlignment.start,
      this.mainAxisAlignment = MainAxisAlignment.start,
      this.onInfoPress});

  final VoidCallback? onInfoPress;
  final Widget headerIcon;
  final List<Widget> children;
  final CrossAxisAlignment crossAxisAlignment;
  final MainAxisAlignment mainAxisAlignment;
  final String headerText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBarWidget(
        showBackButton: true,
        onInfoPress: onInfoPress,
      ),
      body: Padding(
        padding: Gaps.small.paddingRight,
        child: Column(
          children: [
            Gaps.larger.spaceVertical,
            Container(
              padding: Gaps.large.paddingVertical.copyWith(left: Gaps.large, right: Gaps.large),
              color: ColorScheme.of(context).primary,
              child: Row(
                children: [
                  headerIcon,
                  Gaps.larger.spaceHorizontal,
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: Text(headerText.toUpperCase(), style: header3))
                ],
              ),
            ),
            Gaps.extraLarge.spaceVertical,
            Padding(
                padding: Gaps.large.paddingHorizontal,
                child: Column(
                  crossAxisAlignment: crossAxisAlignment,
                  mainAxisAlignment: mainAxisAlignment,
                  children: children,
                )),
          ],
        ),
      ),
    );
  }
}
