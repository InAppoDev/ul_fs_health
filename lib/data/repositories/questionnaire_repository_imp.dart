import 'package:cloud_firestore/cloud_firestore.dart';

import '../../core/constants/aliases.dart';
import '../../core/exceptions/exceptions.dart';
import '../../domain/entities/questionnaire/questionnaire_entity.dart';
import '../../domain/repositories/questionnaire_repository.dart';
import '../models/questionnaire/questionnaire_model.dart';
import '../services/firebase/firebase_service.dart';

class QuestionnaireRepositoryImp implements QuestionnaireRepository {
  const QuestionnaireRepositoryImp({required this.firebaseService});

  final FirebaseService firebaseService;

  @override
  Future<void> storeData({required QuestionnaireEntity entity}) async {
    final userId = (await firebaseService.getLoggedinUser())?.uid;
    if (userId != null) {
      final userRef = firebaseService.getDocument(firebaseService.userCollectionReference, userId);
      final FQuerySnapshot querySnapshot = await firebaseService.questionnaireCollectionReference
          .where('userRef', isEqualTo: userRef)
          .get();
      final data = querySnapshot.docs;
      if (data.isEmpty) {
        await firebaseService.questionnaireCollectionReference
            .add(QuestionnaireModel.fromEntity(entity.copyWith(userRef: userRef)).toJson());
      } else {
        await data.first.reference.set(
            QuestionnaireModel.fromEntity(entity.copyWith(userRef: userRef)).toJson(),
            SetOptions(merge: true));
      }
    }
    else {
      throw NotFoundException('user not found');
    }
  }
}
