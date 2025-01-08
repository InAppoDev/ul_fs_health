import 'package:freezed_annotation/freezed_annotation.dart';

part 'sit_to_stand_event.freezed.dart';

@freezed
class SitToStandEvent with _$SitToStandEvent {
  const factory SitToStandEvent.startTest() = StartTestEvent;
  const factory SitToStandEvent.stopTest() = StopTestEvent;
  const factory SitToStandEvent.saveTestResult() = SaveTestResultEvent;
  const factory SitToStandEvent.getTestResult({required String userId}) =
      GetTestResultEvent;
}
