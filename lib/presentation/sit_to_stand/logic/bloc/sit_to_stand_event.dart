import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sit_to_stand_event.freezed.dart';

@freezed
class SitToStandEvent with _$SitToStandEvent {
  const factory SitToStandEvent.startTest() = StartTestEvent;

  const factory SitToStandEvent.stopTest({
    required DocumentReference userRef,
  }) = StopTestEvent;

  const factory SitToStandEvent.updateTestReady({required double avgTime}) =
      UpdateTestReadyEvent;
}
