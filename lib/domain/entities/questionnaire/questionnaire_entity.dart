
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/constants/aliases.dart';
import '../../../core/converter/document_reference_converter.dart';
import '../../../presentation/questionnaire/utils/difficulty_level.dart';

part 'lefs_data_entity.dart';
part 'questionnaire_data_entity.dart';
part 'sedentary_data_entity.dart';
part 'work_data_entity.dart';

part 'questionnaire_entity.freezed.dart';

@freezed
class QuestionnaireEntity with _$QuestionnaireEntity {
  const factory QuestionnaireEntity({
    @DocumentReferenceConverter()
    FDocumentReference? userRef,
    WorkDataEntity? workData,
    SedentaryDataEntity? sedentaryData,
    QuestionnaireDataEntity? recreateData,
    QuestionnaireDataEntity? travelData,
    LEFSDataEntity? lefsData
  }) = _QuestionnaireEntity;
}
