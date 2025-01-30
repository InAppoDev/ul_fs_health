part of 'walk_test_bloc.dart';

@freezed
class WalkTestEvent with _$WalkTestEvent {
  const factory WalkTestEvent.selectLength(
      {double? selectedLength,
      @Default(true) bool shouldValidate}) = _WalkTestSelect;
  const factory WalkTestEvent.getWalkTestResult({required String userId}) =
      _GetWalkResultEvent;
  const factory WalkTestEvent.saveWalkTestResult({required String userId,
    DateTime? date,
    double? distance,
    double? length,
    double? averageSpeed}) =
  _SaveWalkResultEvent;
  const factory WalkTestEvent.resetAfterSubmit() = _ResetAfterSubmit;
}
