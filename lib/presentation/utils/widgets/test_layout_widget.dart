import 'package:flutter/material.dart';

import '../../../core/constants/gaps.dart';
import '../../../core/extensions/number_extension.dart';
import '../../../gen/assets.gen.dart';
import 'feature_test_header.dart';
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
  final SvgGenImage headerIcon;
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
      body: Column(
        children: [
          FeatureTestHeader(title: headerText, leading: headerIcon),
          (Gaps.largest + Gaps.large).spaceVertical,
          Padding(
              padding: Gaps.larger.paddingHorizontal.copyWith(bottom: Gaps.larger),
              child: Column(
                crossAxisAlignment: crossAxisAlignment,
                mainAxisAlignment: mainAxisAlignment,
                children: children,
              )),
        ],
      ),
    );
  }
}
