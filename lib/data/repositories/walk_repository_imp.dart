import '../../core/constants/aliases.dart';
import '../../core/exceptions/exceptions.dart';
import '../../domain/entities/walk_result_entity.dart';
import '../../domain/repositories/walk_repository.dart';
import '../models/walk_result/walk_result_model.dart';
import '../services/firebase/firebase_service.dart';

class WalkRepositoryImp implements WalkRepository {
  const WalkRepositoryImp({required this.firebaseService});

  final FirebaseService firebaseService;

  @override
  Future<void> saveWalkResults(
      {required String userId,
      DateTime? date,
      double? distance,
      double? averageSpeed}) async {
    if (userId.isEmpty) {
      throw NotFoundException();
    }

    final userRef = firebaseService.getDocument(
        firebaseService.userCollectionReference, userId);
    final resultEntity = WalkResultEntity(
        userRef: userRef,
        date: date,
        distance: distance,
        averageSpeed: averageSpeed);

    await firebaseService.resultCollectionReference
        .add(WalkResultModel.fromEntity(resultEntity).toJson());
  }

  @override
  Future<List<WalkResultEntity>> getWalkResults({required String userId}) async {
    if (userId.isEmpty) {
      throw NotFoundException('user not found');
    } 
    try {
      final userRef = firebaseService.getDocument(
          firebaseService.userCollectionReference, userId);
      final FQuerySnapshot querySnapshot = await firebaseService
          .resultCollectionReference
          .where('userRef', isEqualTo: userRef)
          .get();
      final List<WalkResultEntity> results = querySnapshot.docs.map((doc) {
        return WalkResultModel.fromJson(doc.data()).toEntity();
      }).toList();
      return results;
    } catch (e) {
      return [];
    }
  }
}
