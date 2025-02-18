import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';

import 'permission_service.dart';

class GpsPermissionService implements PermissionService {
  @override
  Future<LocationPermission> checkPermission() async =>
      Geolocator.checkPermission();

  @override
  Future<LocationPermission> requestPermission() async =>
      Geolocator.requestPermission();

  @override
  Future<bool> isServiceEnabled() async =>
      Geolocator.isLocationServiceEnabled();

  @override
  Future<LocationPermission> handlePermission() async {
    LocationPermission permission = await checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await requestPermission();
    }
    if (permission == LocationPermission.denied) {
      permission = await handlePermission();
    }

    return permission;
  }

  @override
  Future<void> openSettings() async {
    try {
      await Geolocator.openLocationSettings();
    } on PlatformException catch (e) {
      if (kDebugMode) {
        print('Error opening location settings: $e');
      }
    }
  }

  @override
  Future<void> openAppSettings() async {
    try {
      await Geolocator.openAppSettings();
    } on PlatformException catch (e) {
      if (kDebugMode) {
        print('Error opening location settings: $e');
      }
    }
  }
}
