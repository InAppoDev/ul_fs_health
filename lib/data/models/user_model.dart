import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/constants/gender.dart';
import '../../domain/entities/user_entity.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String id,
    Gender? gender,
    int? age,
    double? height,
    double? weight,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  const UserModel._();

  UserEntity toEntity() {
    return UserEntity(
      id: id,
      gender: gender,
      age: age,
      height: height,
      weight: weight,
    );
  }
}
