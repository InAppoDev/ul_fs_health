import 'dart:async';

import 'package:flutter/cupertino.dart';

import '../model/counter_model.dart';
import 'submit_button.dart';

class ButtonDelayedWidget extends StatefulWidget {
  const ButtonDelayedWidget({super.key, required this.onPressed,
    required this.title,
    required this.backgroundColor,
    required this.titleColor,
    this.isLoading = false,
    this.isValid = true});

  final VoidCallback onPressed;
  final String title;
  final bool isValid;
  final Color backgroundColor;
  final Color titleColor;
  final bool isLoading;

  @override
  State<ButtonDelayedWidget> createState() => _ButtonDelayedWidgetState();
}

class _ButtonDelayedWidgetState extends State<ButtonDelayedWidget> {

  final ValueNotifier<CounterModel> _countdown =
  ValueNotifier<CounterModel>(const CounterModel(counter: 5, isRunning: false));
  Timer? _timer;

  void _reset() {
    _countdown.value = const CounterModel(counter: 5, isRunning: false);
    _timer?.cancel();
  }

  void _callback() {
    widget.onPressed.call();
  }

  void _startCountdown() {
    if (_countdown.value.isRunning) {
      return;
    }
    _countdown.value = _countdown.value.copyWith(isRunning: true);
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_countdown.value.counter == 0) {
        _reset();
        _callback();
      } else {
        _countdown.value = _countdown.value.copyWith(counter: _countdown.value.counter - 1);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<CounterModel>(
      valueListenable: _countdown,
      builder: (context, countdown, _) {
        return SubmitButton(
            isLoading: widget.isLoading,
            isValid: widget.isValid,
            onPressed: countdown.isRunning
                ? () {}
                : () {
              _startCountdown();
            },
            title: countdown.isRunning
                ? countdown.counter.toString()
                : widget.title,
            backgroundColor: widget.backgroundColor,
            titleColor: widget.titleColor);
      },
    );

  }
}
