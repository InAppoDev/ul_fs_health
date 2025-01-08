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
    on<StopTestEvent>(_onStopTest);
    on<SaveTestResultEvent>(_onSaveTestResult);
    on<GetTestResultEvent>(_onGetTestResult);
  }

  final SitToStandRepository sitToStandRepository;

  StreamSubscription<AccelerometerEvent>? _accelerometerSubscription;
  final List<DateTime> _timestamps = [];
  final List<double> _times = [];
  final List<double> _velocities = [];
  final List<ResultDataEntity> _result = [];

  @override
  Future<void> close() {
    _accelerometerSubscription?.cancel();
    return super.close();
  }

  Future<void> _onStartTest(
      StartTestEvent event, Emitter<SitToStandState> emit) async {
    emit(state.copyWith(
        isTestRunning: true, currentRepetition: 1, isTestFinished: false));

    await _accelerometerSubscription?.cancel();

    final Stopwatch stopwatch = Stopwatch();
    bool isSitting = true;
    bool hasStarted = false;
    int sitToStandCycles = 0;
    const double sittingPosition = 3.0;
    const double standingPosition = 7.0;
    const int debounceDuration = 100;
    const double distance = 1.0;

    DateTime lastEventTime = DateTime.now();

    await for (final event in accelerometerEvents) {
      final currentTime = DateTime.now();
      final elapsedTime = currentTime.difference(lastEventTime).inMilliseconds;

      if (elapsedTime < debounceDuration) {
        continue;
      }

      lastEventTime = currentTime;

      if (state.isTestRunning) {
        if (sitToStandCycles >= 5) {
          emit(state.copyWith(
              isTestRunning: false, isTestFinished: true, progress: 1.0));
          break;
        }

        if (!hasStarted && event.z < sittingPosition) {
          hasStarted = true;
        }

        if (isSitting && event.z < sittingPosition) {
          isSitting = false;
          stopwatch.start();
        }

        if (!isSitting && event.z > standingPosition) {
          isSitting = true;
          stopwatch.stop();

          final sitDuration = stopwatch.elapsed.inMilliseconds / 1000.0;

          stopwatch.reset();

          if (sitDuration > 0) {
            _times.add(sitDuration);

            if (_times.length > 5) {
              _times.removeAt(0);
            }

            final velocity = distance / sitDuration;

            _result.add(ResultDataEntity(
              resultTime: sitDuration,
              velocity: velocity,
            ));

            _velocities.add(velocity);
            if (_velocities.length > 5) {
              _velocities.removeAt(0);
            }

            final avgTime = _times.isNotEmpty
                ? _times.reduce((a, b) => a + b) / _times.length
                : state.avgTime;

            final bestTime = _times.isNotEmpty
                ? _times.reduce((a, b) => a < b ? a : b)
                : state.bestTime;

            final bestVelocity = _velocities.isNotEmpty
                ? _velocities.reduce((a, b) => a > b ? a : b)
                : state.bestVelocity;

            final double progress = sitToStandCycles / 5.0;

            emit(state.copyWith(
              avgTime: avgTime,
              bestTime: bestTime,
              bestVelocity: bestVelocity,
              progress: progress,
            ));

            sitToStandCycles++;

            emit(state.copyWith(
              currentRepetition: sitToStandCycles,
            ));
          }
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
    if (state.currentRepetition == Constants.totalRepetitions) {
      final bestTime =
          _times.isNotEmpty ? _times.reduce((a, b) => a < b ? a : b) : 0.0;

      final bestVelocity = _times.isNotEmpty
          ? _times.map((time) => 1.0 / time).reduce((a, b) => a > b ? a : b)
          : 0.0;

      try {
        final resultEntity = ResultDataEntity(
          resultTime: bestTime,
          velocity: bestVelocity,
        );

        await sitToStandRepository.saveTestResult(entity: resultEntity);

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
