import '../../models/tracking/tracking_data.dart';
import 'tracking_service_imp.dart';

abstract class TrackingService {

  TrackingMode get currentMode;

  bool get isTurned;

  bool get isMoved;

  TrackingData getTrackingData();

  Future<void> startTracking();

  Future<void> stopTracking();

  Future<void> dispose();
}
