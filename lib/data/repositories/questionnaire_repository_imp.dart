import 'package:cloud_firestore/cloud_firestore.dart';

import '../../domain/entities/questionnaire/questionnaire_entity.dart';
import '../../domain/repositories/questionnaire_repository.dart';
import '../models/questionnaire/questionnaire_model.dart';
import '../services/firebase/firebase_service.dart';

class QuestionnaireRepositoryImp implements QuestionnaireRepository {
  const QuestionnaireRepositoryImp({required this.firebaseService});

  final FirebaseService firebaseService;

  @override
  Future<void> storeGPAQRecreationData({required QuestionnaireEntity entity}) async {
    final userId = (await firebaseService.getLoggedinUser())?.uid;
    if (userId != null) {
      final userDoc = firebaseService.questionnaireCollectionReference.doc(userId);
      final userRef = firebaseService.getDocument(firebaseService.userCollectionReference, userId);
      userDoc.set(QuestionnaireModel.fromEntity(entity.copyWith(userRef: userRef)).toJson(),
          SetOptions(merge: true));
    }
  }

  @override
  Future<void> storeGPAQSedentaryData({required QuestionnaireEntity entity}) async {
    final userId = (await firebaseService.getLoggedinUser())?.uid;
    if (userId != null) {
      final userDoc = firebaseService.questionnaireCollectionReference.doc(userId);
      final userRef = firebaseService.getDocument(firebaseService.userCollectionReference, userId);
      userDoc.set(QuestionnaireModel.fromEntity(entity.copyWith(userRef: userRef)).toJson(),
          SetOptions(merge: true));
    }
  }

  @override
  Future<void> storeGPAQTravelData({required QuestionnaireEntity entity}) async {
    final userId = (await firebaseService.getLoggedinUser())?.uid;
    if (userId != null) {
      final userDoc = firebaseService.questionnaireCollectionReference.doc(userId);
      final userRef = firebaseService.getDocument(firebaseService.userCollectionReference, userId);
      userDoc.set(QuestionnaireModel.fromEntity(entity.copyWith(userRef: userRef)).toJson(),
          SetOptions(merge: true));
    }
  }

  @override
  Future<void> storeGPAQWorkData({required QuestionnaireEntity entity}) async {
    final userId = (await firebaseService.getLoggedinUser())?.uid;
    if (userId != null) {
      final userDoc = firebaseService.questionnaireCollectionReference.doc(userId);
      final userRef = firebaseService.getDocument(firebaseService.userCollectionReference, userId);
      await userDoc.set(QuestionnaireModel.fromEntity(entity.copyWith(userRef: userRef)).toJson(),
          SetOptions(merge: true));
    }
  }

  @override
  Future<void> storeLEFSData({required QuestionnaireEntity entity}) async {
    final userId = (await firebaseService.getLoggedinUser())?.uid;
    if (userId != null) {
      final userDoc = firebaseService.questionnaireCollectionReference.doc(userId);
      final userRef = firebaseService.getDocument(firebaseService.userCollectionReference, userId);
      userDoc.set(QuestionnaireModel.fromEntity(entity.copyWith(userRef: userRef)).toJson(),
          SetOptions(merge: true));
    }
  }
}
