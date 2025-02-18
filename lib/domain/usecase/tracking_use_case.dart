import '../../data/models/tracking/tracking_data.dart';
import '../../data/services/permission/permission_service.dart';
import '../../data/services/tracking/tracking_service.dart';

class TrackingUseCase {
  const TrackingUseCase(this.trackingService, this.permissionService);

  final PermissionService permissionService;
  final TrackingService trackingService;

  bool get isGpsMode => trackingService.isGpsMode;

  Future<void> startTracking() async => trackingService.startTracking();

  Future<void> stopTracking() async => trackingService.stopTracking();

  Future<TrackingData> getTrackingData() async => trackingService.getTrackingData();

  Future<void> dispose() async => trackingService.dispose();
}
