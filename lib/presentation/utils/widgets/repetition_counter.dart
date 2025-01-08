import 'package:flutter/material.dart';

class RepetitionCounter extends StatelessWidget {
  const RepetitionCounter({
    super.key,
    required this.repetition,
    required this.totalRepetitions,
    required this.progress,
    required this.bestTime,
  });

  final int repetition;
  final double totalRepetitions;
  final double progress;
  final double bestTime;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Stack(
          alignment: Alignment.center,
          children: <Widget>[
            SizedBox.square(
              dimension: MediaQuery.sizeOf(context).width * 0.5,
              child: CircularProgressIndicator(
                value: progress,
                backgroundColor:
                    Theme.of(context).colorScheme.primary.withOpacity(0.1),
                valueColor: AlwaysStoppedAnimation(
                    Theme.of(context).colorScheme.primary),
              ),
            ),
            Text(
              '$repetition/${totalRepetitions.toInt()}',
              style: const TextStyle(fontSize: 48),
            ),
          ],
        ),
      ],
    );
  }
}
