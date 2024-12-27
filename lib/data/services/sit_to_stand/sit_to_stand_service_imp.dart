import 'package:cloud_firestore/cloud_firestore.dart';
import 'sit_to_stand_service.dart';

class SitToStandServiceImp implements SitToStandService {
  SitToStandServiceImp({FirebaseFirestore? firebaseFirestore})
      : _firebaseFirestore = firebaseFirestore ?? FirebaseFirestore.instance;
  final FirebaseFirestore _firebaseFirestore;

  @override
  Future<void> saveTestResult({
    required double timeMilliseconds,
    required double velocity,
    required DocumentReference userRef,
  }) async {
    try {
      final sitToStandCollection =
          _firebaseFirestore.collection('sit_to_stand');

      await sitToStandCollection.add({
        'timeMilliseconds': timeMilliseconds,
        'velocity': velocity,
        'date': FieldValue.serverTimestamp(),
        'userRef': userRef,
      });
    } catch (e) {
      print('Error saving test result: $e');
    }
  }
}
