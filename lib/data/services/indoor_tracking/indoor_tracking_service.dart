import 'dart:async';


import '../../models/tracking/accelerometer_data.dart';

abstract class IndoorTrackingService {

  double get estimatedDistanceTravelled;

  bool get isTurned;

  bool get isMoved;

  void reset();

  AccelerometerData getAccelerometerData();

  Future<void> startTracking(
      {required Future<bool> Function() onRunning, required Future<void> Function(double) onUpdate});

  Future<void> stopTracking();

  Future<void> dispose();

}
