import 'package:flutter/material.dart';

class SixMinuteWalkTab extends StatelessWidget {
  const SixMinuteWalkTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          Center(
            child: Text('6 minute walk test'),
          )
        ],
      ),
    );
  }
}
