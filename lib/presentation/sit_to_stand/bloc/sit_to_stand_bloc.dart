// ignore_for_file: invalid_use_of_visible_for_testing_member

import 'dart:async';
import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:sensors_plus/sensors_plus.dart';
import '../../../core/constants/constants.dart';
import '../../../core/extensions/list_extension.dart';
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
    on<GetTestResultEvent>(_onGetTestResult);
  }

  final SitToStandRepository sitToStandRepository;
  final List<ResultDataEntity> _result = [];
  Timer? _timer;
  var _isStanding = false;

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }

  Future<void> _onStartTest(
      StartTestEvent event, Emitter<SitToStandState> emit) async {
    emit(state.copyWith(
        isTestRunning: true, currentRepetition: 0, isTestFinished: false));
    final Stopwatch stopwatch = Stopwatch()..start();
    var lastEventTime = DateTime.now();
    await for (final event in accelerometerEvents) {
      if (state.isTestFinished) {
        break;
      }
      final currentTime = DateTime.now();
      final elapsedTime = currentTime.difference(lastEventTime).inMilliseconds;
      if (elapsedTime < Constants.debounceDuration) {
        continue;
      }
      lastEventTime = currentTime;
      log('Z = ${event.z}');
      log('X = ${event.x}');
      if (state.isTestRunning) {
        if (state.currentRepetition == Constants.totalRepetitions) {
          final bestTime = _result.findBestTime(whenEmpty: state.bestTime);
          final bestVelocity =
              _result.findBestVelocity(whenEmpty: state.bestVelocity);
          emit(state.copyWith(
            isTestRunning: false,
            isTestFinished: true,
            progress: 1.0,
            bestTime: bestTime,
            bestVelocity: bestVelocity,
          ));
          break;
        } else {
          if (!_isStanding && event.z < Constants.standingPosition) {
            /* Detect stand-up movement */
            _isStanding = true;
            stopwatch.stop();
            final standDuration = stopwatch.elapsed.inMilliseconds / 1000.0;
            stopwatch.reset();
            if (standDuration > 0) {
              final velocity = 1.0 / standDuration;
              _result.add(ResultDataEntity(
                resultTime: standDuration,
                velocity: velocity,
              ));
              final progress =
                  (state.currentRepetition + 1) / Constants.totalRepetitions;
              emit(state.copyWith(
                progress: progress,
                currentRepetition: state.currentRepetition + 1,
              ));
            }
          } else if (_isStanding && event.z > Constants.sittingPosition ||
              event.x > Constants.sittingPosition ||
              event.x < -Constants.sittingPosition) {
            /* Detect sit-down movement */
            _isStanding = false;
            stopwatch.start();
          }
        }
      }
    }
  }

  Future<void> _onStopTest(
      StopTestEvent event, Emitter<SitToStandState> emit) async {
    if (state.isTestRunning) {
      final bestTime = _result.findBestTime(whenEmpty: state.bestTime);
      final bestVelocity =
          _result.findBestVelocity(whenEmpty: state.bestVelocity);
      _result.clear();
      emit(state.copyWith(
        isTestRunning: false,
        isTestFinished: true,
        status: SitToStandStatus.stop,
        bestTime: bestTime,
        bestVelocity: bestVelocity,
      ));
    }
  }

  Future<void> _onGetTestResult(
      GetTestResultEvent event, Emitter<SitToStandState> emit) async {
    emit(state.copyWith(status: SitToStandStatus.start));
    try {
      final testResults =
          await sitToStandRepository.getTestResult(userId: event.userId);

      emit(state.copyWith(
        status: SitToStandStatus.stop,
        testResults: testResults,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: SitToStandStatus.failure,
        error: e.toString(),
      ));
    }
  }

  Future<void> _onSaveTestResult(
      SaveTestResultEvent event, Emitter<SitToStandState> emit) async {
    if (state.currentRepetition != Constants.totalRepetitions) {
      return;
    }
    try {
      emit(state.copyWith(status: SitToStandStatus.loading));
      final resultEntity = ResultDataEntity(
        resultTime: state.bestTime,
        velocity: state.bestVelocity,
      );
      await sitToStandRepository.saveTestResult(entity: resultEntity);
      emit(state.copyWith(status: SitToStandStatus.save));
    } catch (e) {
      emit(state.copyWith(
          status: SitToStandStatus.failure, error: e.toString()));
    }
  }
}
