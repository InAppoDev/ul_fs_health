part of 'questionnaire_entity.dart';

@freezed
class LEFSDataEntity with _$LEFSDataEntity {
  const factory LEFSDataEntity({
    required Map<String, DifficultyLevel> data
  }) = _LEFSDataEntity;
}
