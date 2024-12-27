import 'package:cloud_firestore/cloud_firestore.dart';
import '../../domain/repositories/sit_to_stand_repository.dart';
import '../services/sit_to_stand/sit_to_stand_service.dart';

class SitToStandRepositoryImp implements SitToStandRepository {
  SitToStandRepositoryImp({required this.sitToStandService});

  final SitToStandService sitToStandService;

  @override
  Future<void> saveTestResult({
    required double timeMilliseconds,
    required double velocity,
    required DocumentReference userRef,
  }) async {
    await sitToStandService.saveTestResult(
      timeMilliseconds: timeMilliseconds,
      velocity: velocity,
      userRef: userRef,
    );
  }
}
