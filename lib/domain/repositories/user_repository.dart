import '../../data/models/user_model.dart';
import '../entities/user_entity.dart';

abstract interface class UserRepository {
  Future<void> saveUserData(UserModel userModel);
  Future<UserEntity?> getLoggedInUser();
}
