import 'package:flutter/material.dart';

class RepetitionCounter extends StatefulWidget {
  const RepetitionCounter({super.key, required this.repetition});

  final int repetition;

  @override
  State<RepetitionCounter> createState() => _RepetitionCounterState();
}

class _RepetitionCounterState extends State<RepetitionCounter> {
  late double _progress;
  var _remainingTime = 0;

  @override
  void initState() {
    super.initState();
    _progress = 0;
    _testOneRep();
  }

  void _testOneRep() {
    setState(() {
      _remainingTime++;
      _progress = _remainingTime / widget.repetition;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.6,
          height: MediaQuery.sizeOf(context).width * 0.6,
          child: CircularProgressIndicator(
            value: _progress,
            backgroundColor:
                Theme.of(context).colorScheme.primary.withValues(alpha: 0.1),
            valueColor:
                AlwaysStoppedAnimation(Theme.of(context).colorScheme.primary),
          ),
        ),
        Text(
          '$_remainingTime/${widget.repetition}',
          style: const TextStyle(fontSize: 48),
        )
      ],
    );
  }
}
