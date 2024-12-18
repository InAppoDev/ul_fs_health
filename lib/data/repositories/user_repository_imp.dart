import '../../core/constants/aliases.dart';
import '../../core/exceptions/exceptions.dart';
import '../../data/models/user_model.dart';
import '../../domain/entities/user_entity.dart';
import '../../domain/repositories/user_repository.dart';
import '../services/firebase/firebase_service.dart';

class UserRepositoryImp implements UserRepository {
  UserRepositoryImp({required this.firebaseService});

  final FirebaseService firebaseService;

  @override
  Future<void> saveUserData(UserModel userModel) async {
    if (userModel.id.isEmpty) {
      throw NotFoundException();
    }
    final FDocumentReference documentReference = firebaseService.getDocument(
      firebaseService.userCollectionReference,
      userModel.id,
    );
    if (!(await documentReference.get()).exists) {
      await documentReference.set(userModel.toJson());
    } else {
      await documentReference.update(userModel.toJson());
    }
  }

  @override
  Future<UserEntity?> getLoggedInUser() async {
    final user = await firebaseService.getLoggedinUser();
    if (user == null) {
      return null;
    }
    final documentReference = firebaseService.getDocument(
      firebaseService.userCollectionReference,
      user.uid,
    );
    final snapshot = await documentReference.get();
    return snapshot.data() == null
        ? null
        : UserModel.fromJson(snapshot.data()!).toEntity();
  }
}
