import 'dart:async';
import 'package:geolocator/geolocator.dart';
import '../../models/tracking/gps_data.dart';
import '../permission/permission_service.dart';
import 'gps_service.dart';

mixin GPSMixin {
  final LocationSettings kLocationSettings = const LocationSettings(
    accuracy: LocationAccuracy.high,
  );
}

class GPSServiceImp with GPSMixin implements GPSService {
  GPSServiceImp(this.gpsPermissionService);

  final PermissionService gpsPermissionService;

  final StreamController<Position> _positionController = StreamController<Position>.broadcast();

  StreamSubscription<Position>? _positionStream;

  static const int smoothingWindow = 5;
  final List<Position> _recentPositions = [];
  bool _hasStrongSignal = true;

  double _distanceTraveled = 0.0;
  Position? _lastPosition;
  double _smoothedDistance = 0.0;
  double _smoothedSpeed = 0.0;
  double _accuracy = 0.0;
  final double _alpha = 0.2;

  @override
  LocationSettings get locationSettings => kLocationSettings;

  @override
  GpsData getGpsData() => GpsData(
      isGPSSignalStrong: _hasStrongSignal,
      distanceTraveled: _distanceTraveled,
      speed: _smoothedSpeed,
      accuracy: _accuracy);

  @override
  Future<void> startTracking(
      {required Future<bool> Function() onRunning, required Future<void> Function(Position) onUpdate}) async {
    _positionStream =
        Geolocator.getPositionStream(locationSettings: kLocationSettings).listen((position) async {
      final acc = position.accuracy;
      _hasStrongSignal = acc <= 10.0;
      _accuracy = acc;
      _distanceTraveled = 0.0;
      final bool running = await onRunning();
      if (running) {
        await _onLocationUpdate(position);
      }
      await onUpdate(position);
    });
  }

  @override
  Future<void> stopTracking() async {
    await _positionStream?.cancel();
  }

  @override
  void reset() {
    _distanceTraveled = 0.0;
    _smoothedSpeed = 0.0;
    _smoothedDistance = 0.0;
    _lastPosition = null;
    _recentPositions.clear();
  }

  @override
  Future<void> dispose() async {
    await _positionStream?.cancel();
    await _positionController.close();
    _distanceTraveled = 0.0;
    _smoothedSpeed = 0.0;
    _lastPosition = null;
  }

  bool get hasStrongSignal => _hasStrongSignal;

  @override
  Stream<Position> get positionStream => _positionController.stream;

  Future<void> _onLocationUpdate(Position position) async {
    if (_lastPosition != null) {
      if (!_hasStrongSignal) {
        return;
      }
      _recentPositions.add(position);
      if (_recentPositions.length > smoothingWindow) {
        _recentPositions.removeAt(0);
      }

      final double rawDistance = Geolocator.distanceBetween(
        _lastPosition!.latitude,
        _lastPosition!.longitude,
        position.latitude,
        position.longitude,
      );

      _smoothedDistance = _alpha * rawDistance + (1 - _alpha) * _smoothedDistance;
      _smoothedSpeed = _alpha * position.speed + (1 - _alpha) * _smoothedSpeed;

      _distanceTraveled = _smoothedDistance;
      print("gps:::: $_distanceTraveled");
    }
    _lastPosition = await Geolocator.getCurrentPosition(locationSettings: kLocationSettings);
    if (!_positionController.isClosed) {
      _positionController.add(position);
    }
  }
}
