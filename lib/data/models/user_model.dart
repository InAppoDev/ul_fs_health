// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/constants/gender.dart';
import '../../domain/entities/user_entity.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  @JsonSerializable(includeIfNull: false)
  const factory UserModel({
    required String id,
    Gender? gender,
    int? age,
    double? height,
    double? weight,
    String? smokerInfo,
    String? drinkerInfo,
    String? cholesterolInfo,
    String? bloodSugarInfo
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  factory UserModel.fromEntity(UserEntity entity) => UserModel(
        id: entity.id,
        gender: entity.gender,
        age: entity.age,
        height: entity.height,
        weight: entity.weight,
        smokerInfo: entity.smokerInfo,
        drinkerInfo: entity.drinkerInfo,
        cholesterolInfo: entity.cholesterolInfo,
        bloodSugarInfo: entity.bloodSugarInfo
      );

  const UserModel._();

  UserEntity toEntity() {
    return UserEntity(
      id: id,
      gender: gender,
      age: age,
      height: height,
      weight: weight,
      smokerInfo: smokerInfo,
      drinkerInfo: drinkerInfo,
      cholesterolInfo: cholesterolInfo,
      bloodSugarInfo: bloodSugarInfo
    );
  }
}
