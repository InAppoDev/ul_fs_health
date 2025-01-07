import 'dart:async';
import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:sensors_plus/sensors_plus.dart';
import '../../../core/constants/constants.dart';
import '../../../domain/entities/result_data_entity.dart';
import '../../../domain/repositories/sit_to_stand_repository.dart';
import 'sit_to_stand_event.dart';
import 'sit_to_stand_state.dart';

class SitToStandBloc extends Bloc<SitToStandEvent, SitToStandState> {
  SitToStandBloc({required this.sitToStandRepository})
      : super(const SitToStandState()) {
    on<StartTestEvent>(_onStartTest);
    on<StopTestEvent>(_onStopTest);
    on<SaveTestResultEvent>(_onSaveTestResult);
  }

  final SitToStandRepository sitToStandRepository;

  StreamSubscription<AccelerometerEvent>? _accelerometerSubscription;
  final List<DateTime> _timestamps = [];
  final List<ResultDataEntity> _result = [];
  var _isStanding = false;

  @override
  Future<void> close() {
    _accelerometerSubscription?.cancel();
    return super.close();
  }

  Future<void> _onStartTest(
      StartTestEvent event, Emitter<SitToStandState> emit) async {
    emit(state.copyWith(isTestRunning: true));
    await _accelerometerSubscription?.cancel();
    await for (final event in accelerometerEvents) {
      if (state.isTestRunning) {
        log('Z = ${event.z}');
        log('X = ${event.x}');
        log('Y = ${event.y}');
        if (!_isStanding && event.z < 3) {
          // Detect stand-up movement
          _isStanding = true;
          emit(state.copyWith(
            // isTestRunning: false,
            currentRepetition: state.currentRepetition + 1,
            // avgTime: avgTime,
            // bestTime: bestTime,
            // bestVelocity: bestVelocity,
            // progress: progress,
          ));
          if (_timestamps.isNotEmpty) {
            // final endTime = DateTime.now();
            // final startTime = _timestamps.last;
            // final duration =
            //     endTime.difference(startTime).inMilliseconds / 1000.0;
            // _result.add(const ResultDataEntity());
            // _result.last = _result.last.copyWith();

            // final avgTime = _times.reduce((a, b) => a + b) / _times.length;
            // _isSitting = true;
            // _velocities.add(avgVelocity);

            // final bestTime = _times.isNotEmpty
            //     ? _times.reduce((a, b) => a < b ? a : b)
            //     : state.bestTime;

            // final bestVelocity = _velocities.isNotEmpty
            //     ? _velocities.reduce((a, b) => a > b ? a : b)
            //     : state.bestVelocity;

            // final double progress =
            //     state.currentRepetition / Constants.totalRepetitions;
          }
        } else if (_isStanding && event.z > 7 || event.x > 7 || event.x < -7) {
          // Detect sit-down movement and count repetition
          _isStanding = false;
        }
      }
    }
  }

  Future<void> _onStopTest(
      StopTestEvent event, Emitter<SitToStandState> emit) async {
    if (state.isTestRunning) {
      _result.clear();
      _timestamps.clear();
      emit(state.copyWith(isTestFinished: true));
    }
  }

  Future<void> _onSaveTestResult(
      SaveTestResultEvent event, Emitter<SitToStandState> emit) async {
    try {
      final avgVelocity = state.avgTime > 0 ? 1.0 / state.avgTime : 0.0;
      await sitToStandRepository.saveTestResult(
        entity:
            ResultDataEntity(resultTime: state.avgTime, velocity: avgVelocity),
      );
      emit(const SitToStandState(status: SitToStandStatus.save));
    } catch (e) {
      emit(state.copyWith(
          status: SitToStandStatus.failure, error: e.toString()));
    }
  }
}
