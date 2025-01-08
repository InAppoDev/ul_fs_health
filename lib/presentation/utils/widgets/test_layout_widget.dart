import 'package:flutter/material.dart';

import '../../../core/constants/gaps.dart';
import '../../../core/extensions/number_extension.dart';
import '../../../gen/assets.gen.dart';
import '../../auth/widgets/auth_guard_widget.dart';
import 'feature_test_header.dart';
import 'scrollable_list_widget.dart';
import 'simple_app_bar_widget.dart';



class TestLayoutWidget extends StatelessWidget {
  const TestLayoutWidget(
      {super.key,
      required this.headerIcon,
      required this.headerText,
      required this.children,
      this.includeAuthGuard = false,
      this.isScrollable = false,
      this.crossAxisAlignment = CrossAxisAlignment.start,
      this.mainAxisAlignment = MainAxisAlignment.start,
      this.onInfoPress});

  final VoidCallback? onInfoPress;
  final SvgGenImage headerIcon;
  final List<Widget> children;
  final bool isScrollable;
  final bool includeAuthGuard;
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
      body: AuthGuardWidget(
        include: includeAuthGuard,
        child: ScrollableListWidget(
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
      ),
    );
  }
}
