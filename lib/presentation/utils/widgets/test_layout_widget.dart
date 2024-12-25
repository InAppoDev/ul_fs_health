import 'package:flutter/material.dart';

import '../../../core/constants/gaps.dart';
import '../../../core/extensions/number_extension.dart';
import '../../../gen/assets.gen.dart';
import 'feature_test_header.dart';
import 'simple_app_bar_widget.dart';

class ScrollableWidget extends StatelessWidget {
  const ScrollableWidget({super.key, required this.children, this.isScrollable = false});

  final bool isScrollable;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return isScrollable
        ? ListView(
            children: children,
          )
        : Column(
            children: children,
          );
  }
}

class TestLayoutWidget extends StatelessWidget {
  const TestLayoutWidget(
      {super.key,
      required this.headerIcon,
      required this.headerText,
      required this.children,
      this.isScrollable = false,
      this.crossAxisAlignment = CrossAxisAlignment.start,
      this.mainAxisAlignment = MainAxisAlignment.start,
      this.onInfoPress});

  final VoidCallback? onInfoPress;
  final SvgGenImage headerIcon;
  final List<Widget> children;
  final bool isScrollable;
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
      body: ScrollableWidget(
        isScrollable: isScrollable,
        children: [
          FeatureTestHeader(title: headerText, leading: headerIcon),
          (Gaps.largest + Gaps.large).spaceVertical,
          Padding(
              padding: Gaps.larger.paddingHorizontal,
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
