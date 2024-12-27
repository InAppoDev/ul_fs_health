import 'package:cloud_firestore/cloud_firestore.dart';

abstract class SitToStandRepository {
  Future<void> saveTestResult({
    required double timeMilliseconds,
    required double velocity,
    required DocumentReference userRef,
  });
}
