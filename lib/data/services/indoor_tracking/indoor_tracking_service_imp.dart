import 'dart:async';
import 'dart:math';
import 'package:sensors_plus/sensors_plus.dart';
import '../../models/measurment/coordinate_model.dart';
import '../../models/tracking/accelerometer_data.dart';
import 'helpers/kalman_filter.dart';
import 'indoor_tracking_service.dart';

mixin IndoorTrackingMixin {
  double lowPassFilter(double newData, double prevData, double alpha) {
    return prevData + alpha * (newData - prevData);
  }

  double applyLowPassFilter(double newData, double deltaTime) {
    const double alpha = 0.1;
    return (1 - alpha) * deltaTime + alpha * newData;
  }

  double applyDeltaTimeThreshold(double deltaTime, double lowerThreshold, double upperThreshold) {
    double time = deltaTime;
    if (time < lowerThreshold) {
      time = lowerThreshold;
    }
    if (time > upperThreshold) {
      time = upperThreshold;
    }
    return time;
  }

  double applyDeadZone(double value, double threshold) {
    return (value.abs() < threshold) ? 0.0 : value;
  }
}

class IndoorTrackingServiceImp with IndoorTrackingMixin implements IndoorTrackingService {
  int _stepCount = 0;
  double _estimatedDistance = 0.0;
  final List<double> _accelerationBuffer = [];
  final int _bufferSize = 10;

  final KalmanFilter _kalmanFilter = KalmanFilter();

  final StreamController<int> _stepController = StreamController<int>.broadcast();
  StreamSubscription<AccelerometerEvent>? _accelerometerSubscription;
  StreamSubscription<GyroscopeEvent>? _gyroscopeSubscription;

  static const double _motionThreshold = 0.001;

  static const double _accelerationDeadZoneThreshold = 0.005;
  static const double _velocityDeadZoneThreshold = 0.001;

  CoordinateModel _gyros = const CoordinateModel();

  CoordinateModel _velocity = const CoordinateModel();

  CoordinateModel _smoothedAcc = const CoordinateModel();

  double _yaw = 0.0;
  double _pitch = 0.0;
  double _roll = 0.0;

  DateTime? _lastTimestamp;
  DateTime? _lastTimestampGyro;

  static const double _gravityAlpha = 0.8;
  CoordinateModel _gravity = const CoordinateModel();

  @override
  int get stepCount => _stepCount;

  @override
  double get estimatedDistanceTravelled => _estimatedDistance;

  @override
  Stream<int> get stepCountStream => _stepController.stream;

  @override
  Future<void> startTracking(
      {required bool Function() onRunning,
      required void Function(AccelerometerEvent) onUpdate}) async {
    _accelerometerSubscription = accelerometerEvents.listen((AccelerometerEvent event) {
      _estimatedDistance = 0.0;
      _gravity = CoordinateModel(
          x: lowPassFilter(event.x, _gravity.x, _gravityAlpha),
          y: lowPassFilter(event.y, _gravity.y, _gravityAlpha),
          z: lowPassFilter(event.z, _gravity.z, _gravityAlpha));

      final CoordinateModel linearAcc = CoordinateModel(
        x: event.x - _gravity.x,
        y: event.y - _gravity.y,
        z: event.z - _gravity.z
      );

      final bool isRunning = onRunning();
      final DateTime now = DateTime.now();
      if (_lastTimestamp == null) {
        _lastTimestamp = now;
        return;
      }
      if (_isStepDetected(linearAcc, event) && isRunning) {
        _onStepDetected(linearAcc, event);
        _updateVelocityAndDistance(linearAcc, event);
      }
      _lastTimestamp = now;
      onUpdate(event);
    });

    _gyroscopeSubscription = gyroscopeEvents.listen((GyroscopeEvent event) {
      final DateTime now = DateTime.now();
      if (_lastTimestampGyro == null) {
        _lastTimestampGyro = now;
        return;
      }
      final double time = (now.difference(_lastTimestampGyro!).inMilliseconds) / 1000.0;
      final double deltaTime = applyDeltaTimeThreshold(time, 0.1, 0.2);
      _lastTimestampGyro = now;
      _gyros = CoordinateModel(x: event.x, y: event.y, z: event.z);

      _yaw += _gyros.z * deltaTime;
      _pitch += _gyros.x * deltaTime;
      _roll += _gyros.y * deltaTime;
    });
  }

  @override
  void reset() {
    _smoothedAcc = const CoordinateModel();
    _estimatedDistance = 0.0;
    _accelerationBuffer.clear();
    _velocity = const CoordinateModel();
    _yaw = 0.0;
    _pitch = 0.0;
    _roll = 0.0;
    _lastTimestamp = null;
    _lastTimestampGyro = null;
    _gravity = const CoordinateModel();
    _gyros = const CoordinateModel();
  }

  @override
  Future<void> stopTracking() async {
    await _accelerometerSubscription?.cancel();
    await _gyroscopeSubscription?.cancel();
  }

  bool _isStepDetected(CoordinateModel acc, AccelerometerEvent event) {
    _smoothedAcc = _smoothedAcc.copyWith(
        x: lowPassFilter(acc.x, _smoothedAcc.x, 0.1),
        y: lowPassFilter(acc.y, _smoothedAcc.y, 0.1),
        z: lowPassFilter(acc.z, _smoothedAcc.z, 0.1));
    final diff =
        CoordinateModel(x: acc.x - _smoothedAcc.x, y: acc.y - _smoothedAcc.y, z: acc.z - _smoothedAcc.z);

    final double motionAcceleration = sqrt(diff.x * diff.x + diff.y * diff.y + diff.z * diff.z);

    if (motionAcceleration < _motionThreshold) {
      return false;
    }

    _accelerationBuffer.add(motionAcceleration);
    if (_accelerationBuffer.length > _bufferSize) {
      _accelerationBuffer.removeAt(0);
    }

    final double avgAcceleration =
        _accelerationBuffer.reduce((a, b) => a + b) / _accelerationBuffer.length;
    final double dynamicThreshold = max(0.1, avgAcceleration * 0.8);
    final DateTime now = DateTime.now();
    if (motionAcceleration > dynamicThreshold &&
        now.difference(_lastTimestamp!).inMilliseconds > 5) {
      return true;
    }
    return false;
  }

  void _onStepDetected(CoordinateModel acc, AccelerometerEvent event) {
    if (_lastTimestamp != null) {
      final CoordinateModel model = _kalmanFilter.apply(acc.x, acc.y, acc.z);
      final CoordinateModel diff = CoordinateModel(x: acc.x - model.x, y: acc.y - model.y, z: acc.z - model.z);

      final double motionAcceleration = sqrt(diff.x * diff.x + diff.y * diff.y + diff.z * diff.z);
      final DateTime now = DateTime.now();
      final double time = (now.difference(_lastTimestamp!).inMilliseconds) / 1000.0;
      final double deltaTime = applyDeltaTimeThreshold(time, 0.1, 0.2);
      final double calculatedDistance =
          (_velocity.x * deltaTime) + (0.5 * motionAcceleration * deltaTime * deltaTime);
      _estimatedDistance += calculatedDistance;

      if (!_stepController.isClosed) {
        _stepController.add(_stepCount);
      }
      _stepCount++;
    }
  }

  void _updateVelocityAndDistance(
      CoordinateModel linearAcc, AccelerometerEvent event) {
    if (_lastTimestamp != null) {
      final DateTime now = DateTime.now();
      final double time = (now.difference(_lastTimestamp!).inMilliseconds) / 1000.0;
      final double deltaTime = applyDeltaTimeThreshold(time, 0.1, 0.2);
      final CoordinateModel rotatedAcc = CoordinateModel(
          x: linearAcc.x * cos(_pitch) * cos(_yaw) +
              linearAcc.y * (cos(_pitch) * sin(_yaw)) -
              linearAcc.z * sin(_pitch),
          y: linearAcc.x * (sin(_roll) * sin(_pitch) * cos(_yaw) - cos(_roll) * sin(_yaw)) +
              linearAcc.y * (cos(_roll) * cos(_yaw) + sin(_roll) * sin(_pitch) * sin(_yaw)) +
              linearAcc.z * cos(_pitch) * sin(_roll),
          z: linearAcc.x * (cos(_roll) * sin(_pitch) * cos(_yaw) + sin(_roll) * sin(_yaw)) +
              linearAcc.y * (sin(_roll) * cos(_yaw) - cos(_roll) * sin(_pitch) * sin(_yaw)) +
              linearAcc.z * cos(_pitch) * cos(_roll));

      final CoordinateModel acc = CoordinateModel(
          x: applyDeadZone(rotatedAcc.x, _accelerationDeadZoneThreshold),
          y: applyDeadZone(rotatedAcc.y, _accelerationDeadZoneThreshold),
          z: applyDeadZone(rotatedAcc.z, _accelerationDeadZoneThreshold));

      if (acc.x == 0.0 && acc.y == 0.0 && acc.z == 0.0) {
        _velocity = const CoordinateModel();
      } else {
        _velocity = CoordinateModel(
            x: _velocity.x + acc.x * deltaTime,
            y: _velocity.y + acc.y * deltaTime,
            z: _velocity.z + acc.z * deltaTime);
        _velocity = _kalmanFilter.apply(_velocity.x, _velocity.y, _velocity.z);
        _velocity = CoordinateModel(
            x: applyDeadZone(_velocity.x, _velocityDeadZoneThreshold),
            y: applyDeadZone(_velocity.y, _velocityDeadZoneThreshold),
            z: applyDeadZone(_velocity.z, _velocityDeadZoneThreshold));
      }
      final CoordinateModel distance = CoordinateModel(
          x: _velocity.x * deltaTime, y: _velocity.y * deltaTime, z: _velocity.z * deltaTime);
      final double totalDistance =
          sqrt(distance.x * distance.x + distance.y * distance.y + distance.z * distance.z);
      _estimatedDistance += totalDistance;
    }
  }

  @override
  Future<void> dispose() async {
    await _accelerometerSubscription?.cancel();
    await _gyroscopeSubscription?.cancel();
    await _stepController.close();
  }

  @override
  AccelerometerData getAccelerometerData() => AccelerometerData(
        stepCount: _stepCount,
        distanceTraveled: _estimatedDistance,
      );
}
