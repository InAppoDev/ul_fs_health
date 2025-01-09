import 'package:cloud_firestore/cloud_firestore.dart';

import '../../domain/entities/result_data_entity.dart';
import '../../domain/repositories/sit_to_stand_repository.dart';
import '../models/result_data_model.dart';
import '../services/firebase/firebase_service.dart';

class SitToStandRepositoryImp implements SitToStandRepository {
  SitToStandRepositoryImp({required this.firebaseService});

  final FirebaseService firebaseService;

  @override
  Future<void> saveTestResult({required ResultDataEntity entity}) async {
    final userId = (await firebaseService.getLoggedinUser())?.uid;
    if (userId != null) {
      await firebaseService.sitToStandCollectionReference
          .add(ResultDataModel.fromEntity(entity.copyWith(
        date: Timestamp.now().toDate(),
        userRef: firebaseService.getDocument(
            firebaseService.userCollectionReference, userId),
      )).toJson());
    }
  }

  @override
  Future<List<ResultDataEntity>> getTestResult({required String userId}) async {
    final querySnapshot = await firebaseService.sitToStandCollectionReference
        .where('userRef',
            isEqualTo: firebaseService.getDocument(
                firebaseService.userCollectionReference, userId))
        .get();
    final results = querySnapshot.docs.map((doc) {
      return ResultDataModel.fromJson(doc.data()).toEntity();
    }).toList();
    return results;
  }
}
