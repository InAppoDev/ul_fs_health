import 'package:geolocator/geolocator.dart';

import '../../models/tracking/tracking_data.dart';
import '../permission/permission_service.dart';
import '../tracking/tracking_service.dart';


class TrackingBackgroundService {
  TrackingBackgroundService._internal();

  static final TrackingBackgroundService _instance = TrackingBackgroundService._internal();

  static TrackingBackgroundService get instance => _instance;

  PermissionService? permissionService;
  TrackingService? trackingService;

  void initialize(PermissionService permissionService, TrackingService trackingService) {
    this.trackingService = trackingService;
    this.permissionService = permissionService;
  }

  bool get isGpsMode => trackingService!.isGpsMode;

  Future<void> startTracking() async {
    final bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    LocationPermission permission = await permissionService!.checkPermission();

    if (!serviceEnabled) {
      permissionService!.openSettings();
    }

    if (permission == LocationPermission.deniedForever) {
      permissionService!.openSettings();
    }

    if (permission == LocationPermission.denied) {
      permission = await permissionService!.requestPermission();
    }
    await trackingService!.startTracking();
    // if (permission == LocationPermission.whileInUse || permission == LocationPermission.always) {
    //   await trackingService.startTracking();
    // } else {
    //   throw const PermissionDeniedException('gps is disabled');
    // }
  }

  Future<void> stopTracking() async {
    await trackingService!.stopTracking();
  }

  Future<TrackingData> getTrackingData() async {
    return trackingService!.getTrackingData();
  }

  Future<void> dispose() async {
    await trackingService!.dispose();
  }
}
