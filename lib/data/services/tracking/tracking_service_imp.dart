import 'dart:async';

import 'package:geolocator/geolocator.dart';

import '../../models/tracking/tracking_data.dart';
import '../gps/gps_service.dart';
import '../indoor_tracking/accelerometer_service.dart';
import 'helpers/kalman_filter.dart';
import 'tracking_service.dart';

enum TrackingMode { none, gps, accelerometer }

class TrackingServiceImp implements TrackingService {
  TrackingServiceImp(this.gpsService, this.accelerometerService);

  final GPSService gpsService;
  final AccelerometerService accelerometerService;

  TrackingMode _previousMode = TrackingMode.none;

  TrackingMode _currentMode = TrackingMode.none;

  @override
  bool get isGpsMode => _currentMode == TrackingMode.gps;
  double _gpsDistance = 0.0;
  double _accDistance = 0.0;
  StreamSubscription<Position>? _gpsStreamSubscription;

  @override
  Future<void> dispose() async {
    await Future.wait([
      gpsService.dispose(),
      accelerometerService.dispose(),
    ]);
    await _gpsStreamSubscription?.cancel();
  }

  @override
  TrackingData getTrackingData() {
    final gpsData = gpsService.getGpsData();
    final accData = accelerometerService.getAccelerometerData();
    final distance = _gpsDistance + _accDistance;
    return TrackingData(
        accelerometerData: accData.copyWith(distanceTraveled: distance),
        isGps: gpsData.isGPSSignalStrong,
        gpsData: gpsData.copyWith(distanceTraveled: distance));
  }

  @override
  Future<void> startTracking() async {
    await Future.wait([
      gpsService.startTracking(
          onRunning: () => gpsService.getGpsData().isGPSSignalStrong,
          onUpdate: (pos) {
            final gpsData = gpsService.getGpsData();
            final bool isStrongSignal = gpsData.isGPSSignalStrong;
            _currentMode = isStrongSignal ? TrackingMode.gps : TrackingMode.accelerometer;
            if (gpsData.distanceTraveled >= 0.01) {
              _gpsDistance += gpsData.distanceTraveled;
            }
            if (!isStrongSignal) {
              gpsService.reset();
            }
            _previousMode = isStrongSignal ? TrackingMode.gps : TrackingMode.accelerometer;
          }),
      accelerometerService.startTracking(
          onRunning: () => !(_currentMode == TrackingMode.gps),
          onUpdate: (event) {
            final accData = accelerometerService.getAccelerometerData();
            // if (accData.distanceTraveled >= 0.01) {
              _accDistance += accData.distanceTraveled;
            // }
            if (_currentMode == TrackingMode.gps) {
              accelerometerService.reset();
            }
          })
    ]);
  }

  @override
  Future<void> stopTracking() async {
    await Future.wait([gpsService.stopTracking(), accelerometerService.stopTracking()]);
  }
}
