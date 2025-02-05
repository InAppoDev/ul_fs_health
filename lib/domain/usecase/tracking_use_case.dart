import 'package:geolocator/geolocator.dart';

import '../../data/models/tracking/tracking_data.dart';
import '../../data/services/permission/permission_service.dart';
import '../../data/services/tracking/tracking_service.dart';

class TrackingUseCase {
  const TrackingUseCase(this.trackingService, this.permissionService);

  final PermissionService permissionService;
  final TrackingService trackingService;

  bool get isGpsMode => trackingService.isGpsMode;

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
    await trackingService.startTracking();
    // if (permission == LocationPermission.whileInUse || permission == LocationPermission.always) {
    //   await trackingService.startTracking();
    // } else {
    //   throw const PermissionDeniedException('gps is disabled');
    // }
  }

  Future<void> stopTracking() async {
    await trackingService.stopTracking();
  }

  Future<TrackingData> getTrackingData() async {
    return trackingService.getTrackingData();
  }

  Future<void> dispose() async {
    await trackingService.dispose();
  }
}
