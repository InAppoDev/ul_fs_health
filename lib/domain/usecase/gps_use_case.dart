import 'package:geolocator/geolocator.dart';

import '../../data/models/gps/gps_data.dart';
import '../../data/services/gps/gps_service.dart';
import '../../data/services/permission/permission_service.dart';

class GpsUseCase {
  const GpsUseCase(this.gpsService, this.permissionService);

  final PermissionService permissionService;
  final GPSService gpsService;

  Future<void> startTracking() async {
    final bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    LocationPermission permission = await permissionService.checkPermission();

    if (!serviceEnabled) {
      permissionService.openSettings();
    }

    if (permission == LocationPermission.deniedForever) {
      permissionService.openSettings();
    }

    if (permission == LocationPermission.denied) {
      permission = await permissionService.requestPermission();
    }

    if (permission == LocationPermission.whileInUse || permission == LocationPermission.always) {
      await gpsService.startTracking();
    } else {
      throw const PermissionDeniedException('gps is disabled');
    }
  }

  Future<void> stopTracking() async {
    await gpsService.stopTracking();
  }

  Future<GPSData> getGpsData() async {
    return gpsService.getGpsData();
  }

  Future<void> dispose() async {
    await gpsService.dispose();
  }
}
