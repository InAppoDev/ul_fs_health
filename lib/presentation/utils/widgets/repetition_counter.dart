import 'package:flutter/material.dart';

class RepetitionCounter extends StatefulWidget {
  const RepetitionCounter({
    super.key,
    required this.repetition,
    required this.totalRepetitions,
    required this.progress,
  });

  final int repetition;
  final double totalRepetitions;
  final double progress;

  @override
  State<RepetitionCounter> createState() => _RepetitionCounterState();
}

class _RepetitionCounterState extends State<RepetitionCounter> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.6,
          height: MediaQuery.sizeOf(context).width * 0.6,
          child: CircularProgressIndicator(
            value: widget.progress,
            backgroundColor:
                Theme.of(context).colorScheme.primary.withOpacity(0.1),
            valueColor:
                AlwaysStoppedAnimation(Theme.of(context).colorScheme.primary),
          ),
        ),
        Text(
          '${widget.repetition}/${widget.totalRepetitions.toInt()}',
          style: const TextStyle(fontSize: 48),
        ),
      ],
    );
  }
}
