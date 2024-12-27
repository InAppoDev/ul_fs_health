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
    on<UpdateTestReadyEvent>(_onTestReady);
  }

  final SitToStandRepository sitToStandRepository;

  StreamSubscription<AccelerometerEvent>? _accelerometerSubscription;
  final List<double> _times = [];
  final List<DateTime> _timestamps = [];
  final List<double> _velocities = [];
  bool _isSitting = true;

  Future<void> _onStartTest(
      StartTestEvent event, Emitter<SitToStandState> emit) async {
    if (state.currentRepetition >= 5) {
      emit(state.copyWith(isTestFinished: true));
      return;
    }

    emit(state.copyWith(
        isTestRunning: true, isTestReady: true, isTestFinished: false));

    await _accelerometerSubscription?.cancel();

    _accelerometerSubscription = accelerometerEvents.listen((event) async {
      if (state.isTestRunning) {
        final double zValue = event.z;

        if (_isSitting && zValue > 9) {
          _timestamps.add(DateTime.now());
          _isSitting = false;
        } else if (!_isSitting && zValue < 9) {
          if (_timestamps.isNotEmpty) {
            final endTime = DateTime.now();
            final startTime = _timestamps.last;
            final duration =
                endTime.difference(startTime).inMilliseconds / 1000.0;
            _times.add(duration);

            final avgTime = _times.reduce((a, b) => a + b) / _times.length;
            _isSitting = true;

            Future.delayed(Duration.zero, () {
              add(UpdateTestReadyEvent(avgTime: avgTime));
            });
          }
        }
      }
    });
  }

  Future<void> _onStopTest(
      StopTestEvent event, Emitter<SitToStandState> emit) async {
    if (state.isTestRunning) {
      final avgVelocity = state.avgTime > 0 ? 1.0 / state.avgTime : 0.0;

      _velocities.add(avgVelocity);

      final bestTime = _times.isNotEmpty
          ? _times.reduce((a, b) => a < b ? a : b)
          : state.bestTime;

      final bestVelocity = _velocities.isNotEmpty
          ? _velocities.reduce((a, b) => a > b ? a : b)
          : state.bestVelocity;

      final double progress =
          state.currentRepetition / Constants.totalRepetitions;

      emit(state.copyWith(
        isTestRunning: false,
        currentRepetition: state.currentRepetition + 1,
        avgTime: state.avgTime,
        bestTime: bestTime,
        bestVelocity: bestVelocity,
        progress: progress,
      ));

      await sitToStandRepository.saveTestResult(
        entity:
            ResultDataEntity(resultTime: state.avgTime, velocity: avgVelocity),
      );

      if (state.currentRepetition >= Constants.totalRepetitions - 1) {
        _times.clear();
        _velocities.clear();
        _timestamps.clear();
        emit(state.copyWith(isTestFinished: true));
      } else {
        emit(state.copyWith(isTestReady: true));
      }
    }
  }

  void _onTestReady(UpdateTestReadyEvent event, Emitter<SitToStandState> emit) {
    emit(state.copyWith(
      isTestReady: true,
      isTestFinished: false,
      avgTime: event.avgTime,
    ));
  }

  @override
  Future<void> close() {
    _accelerometerSubscription?.cancel();
    return super.close();
  }
}
