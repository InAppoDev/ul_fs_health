// ignore_for_file: invalid_use_of_visible_for_testing_member

import 'dart:async';
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
    on<StartNewRepetitionEvent>(_onStartNewRepetition);
    on<StopTestEvent>(_onStopTest);
    on<SaveTestResultEvent>(_onSaveTestResult);
    on<CompleteRepetitionEvent>(_onCompleteRepetition);
  }

  final SitToStandRepository sitToStandRepository;

  StreamSubscription<AccelerometerEvent>? _accelerometerSubscription;
  final List<int> _sitStandTimes = [];
  Timer? _timer;
  int _elapsedTime = 0;

  @override
  Future<void> close() {
    _accelerometerSubscription?.cancel();
    _timer?.cancel();
    return super.close();
  }

  double _calculateBestSitToStandResult() {
    if (_sitStandTimes.isEmpty) {
      return 0.0;
    }
    final bestTimeInMs = _sitStandTimes.reduce((a, b) => a < b ? a : b);
    return bestTimeInMs / 1000.0;
  }

  Future<void> _onStartTest(
      StartTestEvent event, Emitter<SitToStandState> emit) async {
    if (!state.isTestRunning &&
        state.currentRepetition < Constants.totalRepetitions) {
      emit(state.copyWith(
        isTestRunning: true,
        status: SitToStandStatus.start,
        currentRepetition: state.currentRepetition + 1,
        progress: (state.currentRepetition + 1) / Constants.totalRepetitions,
        buttonsVisible: true,
      ));

      _startTimer();
    }
  }

  Future<void> _onStopTest(
      StopTestEvent event, Emitter<SitToStandState> emit) async {
    if (state.isTestRunning) {
      _stopTimer();

      final bestSitToStandResult = _calculateBestSitToStandResult();
      final bestVelocity =
          bestSitToStandResult > 0 ? 1.0 / bestSitToStandResult : 0.0;

      emit(state.copyWith(
        isTestRunning: false,
        status: SitToStandStatus.stop,
        buttonsVisible: false,
        bestTime: bestSitToStandResult,
        bestVelocity: bestVelocity,
      ));
    }
  }

  Future<void> _onCompleteRepetition(
      CompleteRepetitionEvent event, Emitter<SitToStandState> emit) async {
    if (state.currentRepetition < Constants.totalRepetitions) {
      emit(state.copyWith(
        currentRepetition: state.currentRepetition + 1,
        progress: (state.currentRepetition + 1) / Constants.totalRepetitions,
      ));
    } else {
      emit(state.copyWith(
        isTestRunning: false,
        buttonsVisible: false,
      ));
    }
  }

  Future<void> _onStartNewRepetition(
      StartNewRepetitionEvent event, Emitter<SitToStandState> emit) async {
    if (!state.isTestRunning && !state.isTestFinished) {
      emit(state.copyWith(
        currentRepetition: state.currentRepetition + 1,
        progress: (state.currentRepetition + 1) / Constants.totalRepetitions,
      ));
    }
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      _elapsedTime = timer.tick;
      emit(state.copyWith(
        avgTime: _elapsedTime.toDouble(),
      ));
    });
  }

  void _stopTimer() {
    _timer?.cancel();
    _sitStandTimes.add(_elapsedTime);
  }

  Future<void> _onSaveTestResult(
      SaveTestResultEvent event, Emitter<SitToStandState> emit) async {
    if (state.currentRepetition == Constants.totalRepetitions) {
      final bestTime = _sitStandTimes.isNotEmpty
          ? _sitStandTimes.reduce((a, b) => a < b ? a : b).toDouble()
          : 0.0;

      final bestVelocity = bestTime > 0 ? 1.0 / bestTime : 0.0;

      try {
        await sitToStandRepository.saveTestResult(
          entity:
              ResultDataEntity(resultTime: bestTime, velocity: bestVelocity),
        );

        emit(state.copyWith(
          bestTime: bestTime / 1000.0,
          bestVelocity: bestVelocity,
          status: SitToStandStatus.save,
        ));
      } catch (e) {
        emit(state.copyWith(
            status: SitToStandStatus.failure, error: e.toString()));
      }
    }
  }
}
