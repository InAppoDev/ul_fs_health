import 'package:flutter/cupertino.dart';

@immutable
class CounterModel {
  const CounterModel({required this.counter, required this.isRunning});

  CounterModel copyWith({int? counter, bool? isRunning}) =>
      CounterModel(isRunning: isRunning ?? this.isRunning, counter: counter ?? this.counter);

  final int counter;
  final bool isRunning;
}
