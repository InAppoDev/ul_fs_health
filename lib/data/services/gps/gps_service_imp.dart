import 'dart:async';

import 'package:geolocator/geolocator.dart';

import '../permission/gps_permission_service.dart';
import 'gps_service.dart';

class GPSServiceImp implements GPSService {
  GPSServiceImp(this.gpsPermissionService);

  GpsPermissionService gpsPermissionService;

  final StreamController<Position> _positionController = StreamController<Position>();
  late StreamSubscription<Position> _positionStream;
  final LocationSettings _locationSettings = const LocationSettings(
    accuracy: LocationAccuracy.high,
    distanceFilter: 1,
  );

  LocationSettings get locationSettings => _locationSettings;

  double _distanceTraveled = 0.0;
  Position? _lastPosition;
  double _speed = 0.0;

  double get distanceTraveled => _distanceTraveled;
  double get speed => _speed;

  @override
  Future<void> startTracking() async {
    final bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    LocationPermission permission = await gpsPermissionService.checkPermission();

    if (!serviceEnabled) {
      gpsPermissionService.openSettings();
    }

    if (permission == LocationPermission.deniedForever) {
      gpsPermissionService.openSettings();
    }

    if (permission == LocationPermission.denied) {
      permission = await gpsPermissionService.requestPermission();
    }

    if (permission == LocationPermission.whileInUse || permission == LocationPermission.always) {
      _positionStream = Geolocator.getPositionStream(
        locationSettings: _locationSettings
      ).listen(_onLocationUpdate);

      return;
    } else {
      throw const PermissionDeniedException('gps is disabled');
    }
  }

  @override
  Future<void> stopTracking() async {
    _positionStream.cancel();
    _positionController.close();
  }

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

    _lastPosition = position;
    _positionController.add(position);
  }

  Stream<Position> get positionStream => _positionController.stream;

  void dispose() {
    _positionStream.cancel();
    _positionController.close();
  }
}
