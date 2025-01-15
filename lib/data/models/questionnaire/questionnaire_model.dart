import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/constants/aliases.dart';
import '../../../core/converter/document_reference_converter.dart';
import '../../../domain/entities/questionnaire/questionnaire_entity.dart';
import '../../../presentation/questionnaire/utils/difficulty_level.dart';


part 'questionnaire_model.freezed.dart';
part 'questionnaire_model.g.dart';
part 'work_data_model.dart';
part 'questionnaire_data_model.dart';
part 'lefs_data_model.dart';
part 'sedentary_data_model.dart';

@Freezed(toJson: false, fromJson: true)
class QuestionnaireModel with _$QuestionnaireModel {
  const factory QuestionnaireModel({
    @DocumentReferenceConverter()
    required FDocumentReference? userRef,
    required WorkDataModel? workData,
    required QuestionnaireDataModel? travelData,
    required QuestionnaireDataModel? recreateData,
    required SedentaryDataModel? sedentaryData,
    required LEFSDataModel? lefsData,
    required bool? isVigorousActivity
  }) = _QuestionnaireModel;

  factory QuestionnaireModel.fromEntity(QuestionnaireEntity entity) =>
      QuestionnaireModel(
          userRef: entity.userRef,
          workData: entity.workData != null ? WorkDataModel.fromEntity(entity.workData!) : null,
          travelData: entity.travelData != null ? QuestionnaireDataModel.fromEntity(entity.travelData!) : null,
          recreateData: entity.recreateData != null ? QuestionnaireDataModel.fromEntity(entity.recreateData!) : null,
          sedentaryData: entity.sedentaryData != null ? SedentaryDataModel.fromEntity(entity.sedentaryData!) : null,
          lefsData: entity.lefsData != null ? LEFSDataModel.fromEntity(entity.lefsData!) : null,
          isVigorousActivity: entity.isVigorousActivity
      );

  const QuestionnaireModel._();

  factory QuestionnaireModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionnaireModelFromJson(json);

  Map<String, dynamic> toJson() {
    return {
      'userRef': userRef,
      if (workData != null) 'workData': workData?.toJson(),
      if (travelData != null) 'travelData': travelData?.toJson(),
      if (recreateData != null) 'recreateData': recreateData?.toJson(),
      if (sedentaryData != null) 'sedentaryData': sedentaryData?.toJson(),
      if (lefsData != null) 'lefsData': lefsData?.toJson(),
      if (isVigorousActivity != null) 'isVigorousActivity': isVigorousActivity
    };
  }

  QuestionnaireEntity toEntity() {
    return QuestionnaireEntity(
        userRef: userRef,
        workData: workData?.toEntity(),
        travelData: travelData?.toEntity(),
        recreateData: recreateData?.toEntity(),
        sedentaryData: sedentaryData?.toEntity(),
        lefsData: lefsData?.toEntity());
  }
}
