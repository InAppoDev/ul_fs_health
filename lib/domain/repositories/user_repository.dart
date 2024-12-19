import '../entities/user_entity.dart';

abstract interface class UserRepository {
  Future<void> saveUserData(UserEntity userModel);
  Future<UserEntity?> getLoggedInUser();
}
