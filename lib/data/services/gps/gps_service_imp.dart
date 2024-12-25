import 'dart:async';

import 'package:geolocator/geolocator.dart';

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

  PermissionService gpsPermissionService;

  final StreamController<Position> _positionController = StreamController<Position>.broadcast();
  StreamSubscription<Position>? _positionStream;


  @override
  LocationSettings get locationSettings => kLocationSettings;

  double _distanceTraveled = 0.0;
  Position? _lastPosition;
  double _speed = 0.0;

  @override
  double get distanceTraveled => _distanceTraveled;

  @override
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
        locationSettings: kLocationSettings
      ).listen(_onLocationUpdate);
      return;
    } else {
      throw const PermissionDeniedException('gps is disabled');
    }
  }

  @override
  Future<void> stopTracking() async {
    _positionStream?.cancel();
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

  @override
  Stream<Position> get positionStream => _positionController.stream;

  @override
  Future<void> dispose() async {
    _positionStream?.cancel();
    _positionController.close();
    _distanceTraveled = 0.0;
    _speed = 0.0;
    _lastPosition = null;
  }
}
