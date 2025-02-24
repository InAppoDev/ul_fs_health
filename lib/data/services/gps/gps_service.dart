import 'dart:async';

import 'package:geolocator/geolocator.dart';

import '../../models/tracking/gps_data.dart';



abstract class GPSService {
  LocationSettings get locationSettings;
  Stream<Position> get positionStream;


  void reset();

  GpsData getGpsData();
  Future<void> startTracking({required Future<bool> Function() onRunning, required Future<void> Function(Position) onUpdate});
  Future<void> stopTracking();

  Future<void> dispose();

}
