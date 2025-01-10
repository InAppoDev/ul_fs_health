import 'package:freezed_annotation/freezed_annotation.dart';

part 'sedentary_model.freezed.dart';

@freezed
class SedentaryModel with _$SedentaryModel {
  const factory SedentaryModel.from({
    @Default(0) int hours,
    @Default(0) int minutes}) = _SedentaryModel;
}
