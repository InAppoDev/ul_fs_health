import 'package:geolocator/geolocator.dart';

abstract class PermissionService {
  Future<LocationPermission> checkPermission();
  Future<LocationPermission> requestPermission();
  Future<bool> isServiceEnabled();
  Future<LocationPermission> handlePermission();
  Future<void> openSettings();
}
