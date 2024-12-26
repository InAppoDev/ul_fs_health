import 'package:freezed_annotation/freezed_annotation.dart';

part 'result_data_entity.freezed.dart';

@freezed
class ResultDataEntity with _$ResultDataEntity {
  const factory ResultDataEntity({
    String? date,
    String? time,
    String? velocity,
  }) = _ResultDataEntity;
}
