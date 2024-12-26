part of 'walk_test_bloc.dart';


@freezed
class WalkTestEvent with _$WalkTestEvent {
  const factory WalkTestEvent.selectLength(String? selectedLength, [@Default(true) bool shouldValidate]) = _WalkTestSelect;
}

