import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/extensions/int_extension.dart';
import '../logic/timer/timer_bloc.dart';


class TimerWidget extends StatelessWidget {
  const TimerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.6,
          height: MediaQuery.sizeOf(context).width * 0.6,
          child: BlocBuilder<TimerBloc, TimerState>(
            builder: (context, state) {
              return CircularProgressIndicator(
                value: state.progress,
                backgroundColor:
                Theme.of(context).colorScheme.primary.withValues(alpha: 0.1),
                valueColor:
                AlwaysStoppedAnimation(Theme.of(context).colorScheme.primary),
              );
            },
          ),
        ),
        BlocBuilder<TimerBloc, TimerState>(
          builder: (context, state) {
            return Text(
            state.remainingTime.formatTime,
            style: const TextStyle(fontSize: 48),
            );
        })
      ],
    );
  }
}
