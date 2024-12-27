import 'package:flutter/material.dart';

class ScrollableListWidget extends StatelessWidget {
  const ScrollableListWidget({super.key, required this.children, this.isScrollable = false});

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