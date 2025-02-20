import 'dart:async';

import 'package:geolocator/geolocator.dart';

import '../../models/tracking/tracking_data.dart';
import '../gps/gps_service.dart';
import '../indoor_tracking/indoor_tracking_service.dart';

import 'tracking_service.dart';

enum TrackingMode { none, gps, indoor }

class TrackingServiceImp implements TrackingService {
  TrackingServiceImp(
    this.gpsService,
    this.indoorTrackingService,
  );

  final GPSService gpsService;
  final IndoorTrackingService indoorTrackingService;


  TrackingMode _currentMode = TrackingMode.none;

  @override
  bool get isTurned => indoorTrackingService.isTurned;

  @override
  TrackingMode get currentMode => _currentMode;

  double _gpsDistance = 0.0;
  double _accDistance = 0.0;
  StreamSubscription<Position>? _gpsStreamSubscription;

  @override
  Future<void> dispose() async {
    await Future.wait([
      gpsService.dispose(),
      indoorTrackingService.dispose(),
    ]);
    await _gpsStreamSubscription?.cancel();
  }

  @override
  bool get isMoved => indoorTrackingService.isMoved;

  @override
  TrackingData getTrackingData() {
    final gpsData = gpsService.getGpsData();
    final accData = indoorTrackingService.getAccelerometerData();
    final distance = _gpsDistance + _accDistance;
    return TrackingData(
        accelerometerData: accData.copyWith(distanceTraveled: distance),
        mode: _currentMode,
        gpsData: gpsData.copyWith(distanceTraveled: distance));
  }

  @override
  Future<void> startTracking() async {
    await Future.wait([
      gpsService.startTracking(
          onRunning: () => gpsService.getGpsData().isGPSSignalStrong && !indoorTrackingService.isTurned,
          onUpdate: (pos) {
            final gpsData = gpsService.getGpsData();
            final accData = indoorTrackingService.getAccelerometerData();
            if (accData.isTurned) {
              _currentMode = TrackingMode.indoor;
              return;
            }
            final bool isStrongSignal = gpsData.isGPSSignalStrong;
            _currentMode = isStrongSignal ? TrackingMode.gps : TrackingMode.indoor;
            if (gpsData.distanceTraveled >= 0.01 && !accData.isTurned && accData.isMoved) {
              _gpsDistance += gpsData.distanceTraveled;
            }
            if (!isStrongSignal || accData.isTurned) {
              gpsService.reset();
            }
          }),
      indoorTrackingService.startTracking(
          onRunning: () =>
              _currentMode == TrackingMode.indoor ||
              _currentMode == TrackingMode.none ||
              indoorTrackingService.isTurned,
          onUpdate: (distance) {
            _accDistance += distance;
            if (_currentMode == TrackingMode.gps) {
              indoorTrackingService.reset();
            }
          }),
    ]);
  }

  @override
  Future<void> stopTracking() async {
    await Future.wait([
      gpsService.stopTracking(),
      indoorTrackingService.stopTracking(),
    ]);
  }
}
