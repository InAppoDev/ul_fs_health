import 'package:cloud_firestore/cloud_firestore.dart';

abstract class SitToStandService {
  Future<void> saveTestResult({
    required double timeMilliseconds,
    required double velocity,
    required DocumentReference userRef,
  });
}
