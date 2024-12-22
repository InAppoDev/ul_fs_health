import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';
import '../../../core/constants/gaps.dart';
import '../../../core/extensions/number_extension.dart';
import '../../../gen/assets.gen.dart';

class FeatureTestHeader extends StatelessWidget {
  const FeatureTestHeader({
    super.key,
    required this.title,
    required this.leading,
  });

  final String title;
  final SvgGenImage leading;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Constants.featureTestHeaderHeight,
      width: MediaQuery.sizeOf(context).width,
      child: ColoredBox(
        color: Theme.of(context).colorScheme.primary,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Gaps.medium.spaceHorizontal,
            leading.svg(
              width: MediaQuery.sizeOf(context).width * 0.2,
              height: MediaQuery.sizeOf(context).width * 0.2,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
            Flexible(
              child: Text(
                title.toUpperCase(),
                style: TextStyle(
                    fontSize: 26,
                    color: Theme.of(context).colorScheme.onPrimary,
                    fontWeight: FontWeight.w300),
              ),
            ),
            Gaps.medium.spaceHorizontal,
          ],
        ),
      ),
    );
  }
}
