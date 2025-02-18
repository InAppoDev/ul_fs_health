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

  CoordinateModel applyHighPassFilter(
      CoordinateModel newAcc, CoordinateModel prevAcc, double alpha, CoordinateModel gravity) {
    return CoordinateModel(
      x: alpha * (prevAcc.x + newAcc.x - gravity.x),
      y: alpha * (prevAcc.y + newAcc.y - gravity.y),
      z: alpha * (prevAcc.z + newAcc.z - gravity.z),
    );
  }

  double applyDeadZone(double value, double threshold) {
    return (value.abs() < threshold) ? 0.0 : value;
  }

  double dynamicDeadZone(double value, double baseThreshold, double varianceFactor) {
    return (value.abs() < baseThreshold * varianceFactor) ? 0.0 : value;
  }
}

class IndoorTrackingServiceImp with IndoorTrackingMixin implements IndoorTrackingService {
  int _stepCount = 0;
  double _estimatedDistance = 0.0;
  final List<double> _accelerationBuffer = [];
  final List<CoordinateModel> _referenceStepPattern = [];
  final List<double> _recentMagnitudes = [];
  final _peakWindowSize = 10;
  final int _bufferSize = 10;

  bool _isMoved = false;

  CoordinateModel _prevPos = const CoordinateModel();

  @override
  bool get isMoved => _isMoved;

  @override
  bool get isTurned => _isTurned;

  final KalmanFilter _kalmanFilter = KalmanFilter(measurementNoise: 0.01);

  final StreamController<int> _stepController = StreamController<int>.broadcast();
  StreamSubscription<AccelerometerEvent>? _accelerometerSubscription;
  StreamSubscription<GyroscopeEvent>? _gyroscopeSubscription;

  static const double _motionThreshold = 1e-5;

  static const double _accelerationDeadZoneThreshold = 0.005;
  static const double _peakThreshold = 1.2;
  static const double _velocityDeadZoneThreshold = 0.001;
  final int _minStepIntervalMs = 300;  // Minimum interval (0.3s)
  final int _maxStepIntervalMs = 1500; // Maximum interval (1.5s)

  CoordinateModel _gyros = const CoordinateModel();

  CoordinateModel _velocity = const CoordinateModel();

  CoordinateModel _smoothedAcc = const CoordinateModel();

  double _yaw = 0.0;
  double _pitch = 0.0;
  double _roll = 0.0;
  double _prevYaw = 0.0;

  bool _isTurned = false;

  DateTime _startTimer = DateTime.now();
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
      final now = DateTime.now();
      if (_lastTimestamp == null) {
        _lastTimestamp = now;
        return;
      }
      _estimatedDistance = 0.0;
      _gravity = CoordinateModel(
          x: lowPassFilter(event.x, _gravity.x, _gravityAlpha),
          y: lowPassFilter(event.y, _gravity.y, _gravityAlpha),
          z: lowPassFilter(event.z, _gravity.z, _gravityAlpha));

      final CoordinateModel linearAcc = CoordinateModel(
          x: event.x - _gravity.x, y: event.y - _gravity.y, z: event.z - _gravity.z);

      final filteredAcc = applyHighPassFilter(linearAcc, _smoothedAcc, 0.9, _gravity);

      final coord = CoordinateModel(x: event.x, y: event.y, z: event.z);
      final bool isRunning = onRunning();
      final moved = _isStepDetected(filteredAcc, coord, event);
      if ((moved || _isTurned) && isRunning) {
        _onStepDetected(filteredAcc, event);
        _updateVelocityAndDistance(filteredAcc, event);
      }
      _prevPos = coord;
      print("KKKK::: ${now.difference(_startTimer).inMilliseconds}");
      if (now.difference(_startTimer).inMilliseconds > 100) {
        _isMoved = moved;
        _startTimer = now;
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

      final time = now.difference(_lastTimestamp!).inMilliseconds / 1000.0;

      final double deltaTime = applyDeltaTimeThreshold(time, 0.1, 0.2);
      _gyros = CoordinateModel(x: event.x, y: event.y, z: event.z);

      _yaw += _gyros.z * deltaTime;
      _pitch += _gyros.x * deltaTime;
      _roll += _gyros.y * deltaTime;

      if (_yaw > pi) {
        _yaw -= 2 * pi;
      }

      if (_yaw < -pi) {
        _yaw += 2 * pi;
      }

      // Check for a significant change in yaw (e.g., more than 30 degrees)
      final double deltaYaw = (_yaw - _prevYaw).abs();
      _isTurned = deltaYaw > pi / 6;

      // Update previous yaw
      _prevYaw = _yaw;
    });
  }

  @override
  void reset() {
    // _smoothedAcc = const CoordinateModel();
    _estimatedDistance = 0.0;
    // _accelerationBuffer.clear();
    // _velocity = const CoordinateModel();
    // _yaw = 0.0;
    // _pitch = 0.0;
    // _roll = 0.0;
    // // _lastTimestamp = null;
    // // _lastTimestampGyro = null;
    // _gravity = const CoordinateModel();
    // _gyros = const CoordinateModel();
  }

  @override
  Future<void> stopTracking() async {
    await _accelerometerSubscription?.cancel();
    await _gyroscopeSubscription?.cancel();
  }

  bool _isMoving() {
    if (_recentMagnitudes.length < _peakWindowSize) {
      return false;
    }

    final double current = _recentMagnitudes[_peakWindowSize ~/ 2];
    final double average = _recentMagnitudes.reduce((a, b) => a + b) / _recentMagnitudes.length;
    final double dynamicThreshold = max(_peakThreshold, average * 1.2);

    return _isPeak(current, dynamicThreshold);
  }

  /// Peak Detection Logic
  bool _isPeak(double value, double threshold) {
    final int mid = _peakWindowSize ~/ 2;
    for (int i = 0; i < _recentMagnitudes.length; i++) {
      if (i == mid) {
        continue;
      }
      if (value <= _recentMagnitudes[i]) {
        return false;
      }
    }
    return value > threshold;
  }

  bool _isStationary(CoordinateModel acc) {
    final double magnitude = sqrt(acc.x * acc.x + acc.y * acc.y + acc.z * acc.z);
    return magnitude < _motionThreshold;
  }

  bool _isStepDetected(CoordinateModel acc, CoordinateModel coordinate, AccelerometerEvent event) {
    return _isMoving() || _isStationary(acc);
    // final double magnitude = sqrt(acc.x * acc.x + acc.y * acc.y + acc.z * acc.z);
    // _accelerationBuffer.add(magnitude);
    // if (_accelerationBuffer.length > _bufferSize) _accelerationBuffer.removeAt(0);
    //
    // final double adaptiveThreshold = max(0.5, min(1.0, magnitude * 10));
    // return magnitude > adaptiveThreshold;
    // _smoothedAcc = _smoothedAcc.copyWith(
    //     x: lowPassFilter(acc.x, _smoothedAcc.x, 1.2),
    //     y: lowPassFilter(acc.y, _smoothedAcc.y, 1.2),
    //     z: lowPassFilter(acc.z, _smoothedAcc.z, 1.2));
    //
    // final diffX = CoordinateModel(
    //     x: coordinate.x - _prevPos.x, y: coordinate.y - _prevPos.y, z: coordinate.z - _prevPos.z);
    // final dist = sqrt(diffX.x * diffX.x + diffX.y * diffX.y + diffX.z * diffX.z);
    //
    // return dist > 0.6;
  }

  void _onStepDetected(CoordinateModel acc, AccelerometerEvent event) {
    if (_lastTimestamp != null) {
      final CoordinateModel model = _kalmanFilter.apply(acc.x, acc.y, acc.z);
      final CoordinateModel diff =
          CoordinateModel(x: acc.x - model.x, y: acc.y - model.y, z: acc.z - model.z);

      final double motionAcceleration = sqrt(diff.x * diff.x + diff.y * diff.y + diff.z * diff.z);
      final DateTime now = DateTime.now();
      final double time = now.difference(_lastTimestamp!).inMilliseconds / 1000.0;
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

  double movingAverage(List<double> data, int period) {
    if (data.length < period) {
      return 0.0;
    }
    final double sum = data.sublist(data.length - period).reduce((a, b) => a + b);
    return sum / period;
  }

  void _updateVelocityAndDistance(CoordinateModel linearAcc, AccelerometerEvent event) {
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
            x: dynamicDeadZone(_velocity.x, _velocityDeadZoneThreshold, 1.5),
            y: dynamicDeadZone(_velocity.y, _velocityDeadZoneThreshold, 1.5),
            z: dynamicDeadZone(_velocity.z, _velocityDeadZoneThreshold, 1.5));
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
      isMoved: _isMoved,
      isTurned: _isTurned);
}
