// ignore_for_file: invalid_use_of_visible_for_testing_member

import 'dart:async';
import 'dart:developer';
import 'dart:math' as math;
import 'package:bloc/bloc.dart';
import 'package:sensors_plus/sensors_plus.dart';
import 'package:vibration/vibration.dart';
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
  var _hasSit = true;

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }

  Future<void> _onStartTest(
      StartTestEvent event, Emitter<SitToStandState> emit) async {
    emit(state.copyWith(
        isTestRunning: true, currentRepetition: 0, isTestFinished: false));
    final Stopwatch stopwatch = Stopwatch();
    var lastEventTime = DateTime.now();
    final hasVirbator = await Vibration.hasVibrator();
    await for (final event in accelerometerEventStream()) {
      if (state.isTestFinished) {
        break;
      }
      final currentTime = DateTime.now();
      final elapsedTime = currentTime.difference(lastEventTime).inMilliseconds;
      if (elapsedTime < Constants.debounceDuration) {
        continue;
      }
      lastEventTime = currentTime;
      log('Z = ${event.z.toStringAsFixed(2)}\tX = ${event.x.toStringAsFixed(2)}\tY = ${event.y.toStringAsFixed(2)}');
      log('STANDING = $_isStanding\tHAS SIT = $_hasSit');
      log('RESULT = ${_result.map((e) => e.resultTime)}');
      if (state.isTestRunning) {
        if (state.currentRepetition == Constants.totalRepetitions) {
          final result = _result.findObjectByBestTime();
          emit(state.copyWith(
            isTestRunning: false,
            isTestFinished: true,
            progress: 1.0,
            bestTime: result?.resultTime ?? 0.0,
            bestVelocity: result?.velocity ?? 0.0,
          ));
          break;
        } else {
          if (!_hasSit && event.y.abs() < 2) {
            /* Detect sitting position */
            _isStanding = false;
            _hasSit = true;
          } else if (!_isStanding &&
              _hasSit &&
              event.z <= Constants.seatOffPosition &&
              event.x.abs() < Constants.seatOffPosition &&
              event.y.abs() > 2) {
            /* Detect seat-off movement and start timer */
            _isStanding = true;
            if (!stopwatch.isRunning) {
              stopwatch.start();
            }
          } else if (_isStanding && event.z >= -1 && event.z <= 1 ||
              event.y.abs() > Constants.sittingPosition0XAxis) {
            /* Detect standing position and stop timer */
            _hasSit = false;
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
              if (hasVirbator) {
                Vibration.vibrate();
              }
              emit(state.copyWith(
                progress: progress,
                currentRepetition: state.currentRepetition + 1,
              ));
            }
          }
        }
      } else {
        break;
      }
    }
  }

  Future<void> _onStopTest(
      StopTestEvent event, Emitter<SitToStandState> emit) async {
    if (state.isTestRunning) {
      final result = _result.findObjectByBestTime();
      _result.clear();
      emit(state.copyWith(
        isTestRunning: false,
        isTestFinished: true,
        status: SitToStandStatus.stop,
        bestTime: result?.resultTime ?? 0.0,
        bestVelocity: result?.velocity ?? 0.0,
      ));
    }
  }

  Future<void> _onGetTestResult(
      GetTestResultEvent event, Emitter<SitToStandState> emit) async {
    emit(state.copyWith(status: SitToStandStatus.start));
    try {
      emit(state.copyWith(status: SitToStandStatus.loading));
      final testResults =
          await sitToStandRepository.getTestResult(userId: event.userId);

      final sortedResults = List<ResultDataEntity>.from(testResults)
        ..sort((a, b) => a.date!.compareTo(b.date!));
      emit(state.copyWith(
        status: SitToStandStatus.stop,
        testResults: sortedResults,
      ));
    } catch (e) {
      emit(
        state.copyWith(
          status: SitToStandStatus.failure,
          error: e.toString(),
        ),
      );
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
