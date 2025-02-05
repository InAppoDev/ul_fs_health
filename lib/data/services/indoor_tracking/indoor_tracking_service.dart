import 'dart:async';

import 'package:sensors_plus/sensors_plus.dart';

import '../../models/tracking/accelerometer_data.dart';

abstract class IndoorTrackingService {
  int get stepCount;

  double get estimatedDistanceTravelled;

  void reset();

  AccelerometerData getAccelerometerData();

  Future<void> startTracking(
      {required bool Function() onRunning, required void Function(AccelerometerEvent) onUpdate});

  Future<void> stopTracking();

  Future<void> dispose();

  Stream<int> get stepCountStream;
}
