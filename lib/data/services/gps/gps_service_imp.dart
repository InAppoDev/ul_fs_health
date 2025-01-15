import 'dart:async';

import 'package:geolocator/geolocator.dart';

import '../../models/gps/gps_data.dart';
import '../permission/permission_service.dart';
import 'gps_service.dart';

mixin GPSMixin {
  final LocationSettings kLocationSettings = const LocationSettings(
    accuracy: LocationAccuracy.high,
    distanceFilter: 1,
  );
}

class GPSServiceImp with GPSMixin implements GPSService {
  GPSServiceImp(this.gpsPermissionService);

  final PermissionService gpsPermissionService;

  final StreamController<Position> _positionController = StreamController<Position>.broadcast();

  StreamSubscription<Position>? _positionStream;

  @override
  LocationSettings get locationSettings => kLocationSettings;

  double _distanceTraveled = 0.0;
  Position? _lastPosition;
  double _speed = 0.0;

  @override
  GPSData getGpsData() => GPSData(distanceTraveled: _distanceTraveled, speed: _speed);

  @override
  Future<void> startTracking() async {
    _positionStream =
        Geolocator.getPositionStream(locationSettings: kLocationSettings).listen(_onLocationUpdate);
  }

  @override
  Future<void> stopTracking() async => await _positionStream?.cancel();

  void _onLocationUpdate(Position position) {
    if (_lastPosition != null) {
      final double distance = Geolocator.distanceBetween(
        _lastPosition!.latitude,
        _lastPosition!.longitude,
        position.latitude,
        position.longitude,
      );
      _distanceTraveled += distance;
      _speed = position.speed;
    }
    if (!_positionController.isClosed) {
      _lastPosition = position;
      _positionController.add(position);
    }
  }

  @override
  Stream<Position> get positionStream => _positionController.stream;

  @override
  Future<void> dispose() async {
    await _positionStream?.cancel();
    await _positionController.close();
    _distanceTraveled = 0.0;
    _speed = 0.0;
    _lastPosition = null;
  }
}
