import 'dart:async';


abstract class GPSService {

  Future<void> startTracking();
  Future<void> stopTracking();

}