import '../../models/tracking/tracking_data.dart';

abstract class TrackingService {

  bool get isGpsMode;
  TrackingData getTrackingData();

  Future<void> startTracking();

  Future<void> stopTracking();

  Future<void> dispose();
}
