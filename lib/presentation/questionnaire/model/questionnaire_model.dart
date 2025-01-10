import 'package:freezed_annotation/freezed_annotation.dart';

part 'questionnaire_model.freezed.dart';

@freezed
class QuestionnaireModel with _$QuestionnaireModel {
  const factory QuestionnaireModel.from({bool? hasActivity,
    int? daysInWeek,
    @Default(0) int hours,
    @Default(0) int minutes}) = _QuestionnaireModel;
}
