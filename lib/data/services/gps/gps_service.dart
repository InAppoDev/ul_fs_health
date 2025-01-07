import 'dart:async';

import 'package:geolocator/geolocator.dart';

import '../../models/gps/gps_data.dart';



abstract class GPSService {
  LocationSettings get locationSettings;
  Stream<Position> get positionStream;

  GPSData getGpsData();
  Future<void> startTracking();
  Future<void> stopTracking();

  Future<void> dispose();

}
