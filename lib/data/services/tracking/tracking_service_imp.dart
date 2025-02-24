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
  TrackingMode _lastMode = TrackingMode.none;

  @override
  bool get isTurned => indoorTrackingService.isTurned;

  @override
  TrackingMode get currentMode => _currentMode;

  double _gpsDistance = 0.0;
  double _accDistance = 0.0;
  int _indoorStableReading = 0;
  int _gpsStableReading = 0;
  DateTime? _lastSwitchTime;
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
        accelerometerData: accData.copyWith(distanceTraveled: _accDistance),
        mode: _currentMode,
        distance: distance,
        gpsData: gpsData.copyWith(distanceTraveled: _gpsDistance));
  }

  @override
  Future<void> startTracking() async {
    await Future.wait([
      gpsService.startTracking(
          onRunning: () async =>
              gpsService.getGpsData().isGPSSignalStrong && !indoorTrackingService.isTurned,
          onUpdate: (pos) async {
            final gpsData = gpsService.getGpsData();
            final accData = indoorTrackingService.getAccelerometerData();
            if (accData.isTurned) {
              _currentMode = TrackingMode.indoor;
              _lastMode = TrackingMode.indoor;
              return;
            }

            final bool isStrongSignal = gpsData.isGPSSignalStrong;
            if (isStrongSignal) {
              _gpsStableReading++;
              _indoorStableReading = 0; // Reset indoor count
            } else {
              _indoorStableReading++;
              _gpsStableReading = 0; // Reset GPS count
            }
            if (_gpsStableReading >= 3) {
              _currentMode = TrackingMode.gps;
            }
            if (_indoorStableReading >= 3) {
              _currentMode = TrackingMode.indoor;
            }

            if (_lastSwitchTime == null || DateTime.now().difference(_lastSwitchTime!).inMilliseconds >= 800) {
              // Apply hysteresis-based switching with delay
              if (_gpsStableReading >= 3 && _currentMode != TrackingMode.gps) {
                // Wait only if switching from indoor to GPS, not on first detection
                if (_lastMode != TrackingMode.gps) {
                  _lastSwitchTime = DateTime.now();
                  _currentMode = TrackingMode.gps;
                }
              }

              if (_indoorStableReading >= 3 && _currentMode != TrackingMode.indoor) {
                // Wait only if switching from GPS to Indoor, not on first detection
                if (_lastMode != TrackingMode.indoor) {
                  _lastSwitchTime = DateTime.now();
                  _currentMode = TrackingMode.indoor;
                }
              }
            }

            if (_currentMode == TrackingMode.gps &&
                _lastMode != TrackingMode.indoor &&
                gpsData.distanceTraveled >= 0.01 &&
                !accData.isTurned &&
                accData.isMoved) {
              _gpsDistance += gpsData.distanceTraveled;
            }

            if (_currentMode == TrackingMode.indoor && _lastMode != TrackingMode.gps) {
              gpsService.reset(); // Reset GPS tracking but keep the distance
            }
            _lastMode = _currentMode;
          }),
      indoorTrackingService.startTracking(
          onRunning: () async =>
              _currentMode == TrackingMode.indoor ||
              _currentMode == TrackingMode.none ||
              indoorTrackingService.isTurned,
          onUpdate: (distance) async {
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
