import 'dart:async';

import 'package:geolocator/geolocator.dart';


abstract class GPSService {
  LocationSettings get locationSettings;
  double get distanceTraveled;
  double get speed;
  Stream<Position> get positionStream;

  Future<void> startTracking();
  Future<void> stopTracking();

  Future<void> dispose();

}
