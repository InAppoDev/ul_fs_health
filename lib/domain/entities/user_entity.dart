import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/constants/gender.dart';

part 'user_entity.freezed.dart';

@freezed
class UserEntity with _$UserEntity {
  const factory UserEntity({
    required String id,
    Gender? gender,
    int? age,
    double? height,
    double? weight,
  }) = _UserEntity;
}
