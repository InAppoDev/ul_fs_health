import 'dart:async';
import 'dart:math';
import 'package:sensors_plus/sensors_plus.dart';
import '../../models/tracking/accelerometer_data.dart';
import '../tracking/helpers/kalman_filter.dart';
import 'accelerometer_service.dart';

mixin AccelerometerMixin {
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
}

class AccelerometerServiceImp with AccelerometerMixin implements AccelerometerService {
  int _stepCount = 0;
  double _estimatedDistance = 0.0;
  final List<double> _accelerationBuffer = [];
  final int _bufferSize = 10;

  final KalmanFilter _kalmanFilterX = KalmanFilter();
  final KalmanFilter _kalmanFilterY = KalmanFilter();
  final KalmanFilter _kalmanFilterZ = KalmanFilter();

  final StreamController<int> _stepController = StreamController<int>.broadcast();
  StreamSubscription<AccelerometerEvent>? _accelerometerSubscription;
  StreamSubscription<GyroscopeEvent>? _gyroscopeSubscription;

  static const double _motionThreshold = 0.001;

  static const double _accelerationDeadzoneThreshold = 0.005;
  static const double _velocityDeadzoneThreshold = 0.001;

  double _gyroX = 0.0;
  double _gyroY = 0.0;
  double _gyroZ = 0.0;

  double _velocityX = 0.0;
  double _velocityY = 0.0;
  double _velocityZ = 0.0;

  double _smoothedAccX = 0.0;
  double _smoothedAccY = 0.0;
  double _smoothedAccZ = 0.0;

  double _yaw = 0.0;
  double _pitch = 0.0;
  double _roll = 0.0;

  DateTime? _lastTimestamp;
  DateTime? _lastTimestampGyro;


  static const double _gravityAlpha = 0.8;
  double _gravityX = 0.0;
  double _gravityY = 0.0;
  double _gravityZ = 0.0;

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
      _gravityX = lowPassFilter(event.x, _gravityX, _gravityAlpha);
      _gravityY = lowPassFilter(event.y, _gravityY, _gravityAlpha);
      _gravityZ = lowPassFilter(event.z, _gravityZ, _gravityAlpha);

      final double linearAccX = event.x - _gravityX;
      final double linearAccY = event.y - _gravityY;
      final double linearAccZ = event.z - _gravityZ;

      final bool isRunning = onRunning();
      final DateTime now = DateTime.now();
      if (_lastTimestamp == null) {
        _lastTimestamp = now;
        return;
      }
      if (_isStepDetected(linearAccX, linearAccY, linearAccZ, event) && isRunning) {
        _onStepDetected(linearAccX, linearAccY, linearAccZ, event);
        _updateVelocityAndDistance(linearAccX, linearAccY, linearAccZ, event);
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
      _gyroX = event.x;
      _gyroY = event.y;
      _gyroZ = event.z;

      _yaw += _gyroZ * deltaTime;
      _pitch += _gyroX * deltaTime;
      _roll += _gyroY * deltaTime;
    });
  }

  @override
  void reset() {
    _smoothedAccX = 0.0;
    _smoothedAccY = 0.0;
    _smoothedAccZ = 0.0;
    _estimatedDistance = 0.0;
    _accelerationBuffer.clear();
    _velocityX = 0.0;
    _velocityY = 0.0;
    _velocityZ = 0.0;
    _yaw = 0.0;
    _pitch = 0.0;
    _roll = 0.0;
    _lastTimestamp = null;
    _lastTimestampGyro = null;
    _gravityX = 0.0;
    _gravityY = 0.0;
    _gravityZ = 0.0;
  }

  @override
  Future<void> stopTracking() async {
    await _accelerometerSubscription?.cancel();
    await _gyroscopeSubscription?.cancel();
  }

  double _applyDeadzone(double value, double threshold) {
    return (value.abs() < threshold) ? 0.0 : value;
  }

  // bool _isStill(double accX, double accY, double accZ) {
  //   return accX.abs() < 0.2 && accY.abs() < 0.2 && accZ.abs() < 0.2; // Adjust values based on your tests
  // }

  bool _isStepDetected(double accX, double accY, double accZ, AccelerometerEvent event) {
    _smoothedAccX = lowPassFilter(accX, _smoothedAccX, 0.1);
    _smoothedAccY = lowPassFilter(accY, _smoothedAccY, 0.1);
    _smoothedAccZ = lowPassFilter(accZ, _smoothedAccZ, 0.1);

    final double diffX = accX - _smoothedAccX;
    final double diffY = accY - _smoothedAccY;
    final double diffZ = accZ - _smoothedAccZ;

    final double motionAcceleration = sqrt(diffX * diffX + diffY * diffY + diffZ * diffZ);

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
    if (motionAcceleration > dynamicThreshold && now.difference(_lastTimestamp!).inMilliseconds > 5) {
      return true;
    }
    return false;
  }

  void _onStepDetected(double accX, double accY, double accZ, AccelerometerEvent event) {
    if (_lastTimestamp != null) {
      final double smoothedX = _kalmanFilterX.update(accX);
      final double smoothedY = _kalmanFilterY.update(accY);
      final double smoothedZ = _kalmanFilterZ.update(accZ);

      final double diffX = accX - smoothedX;
      final double diffY = accY - smoothedY;
      final double diffZ = accZ - smoothedZ;


      final double motionAcceleration = sqrt(diffX * diffX + diffY * diffY + diffZ * diffZ);
      final DateTime now = DateTime.now();
      final double time = (now.difference(_lastTimestamp!).inMilliseconds) / 1000.0;
      final double deltaTime = applyDeltaTimeThreshold(time, 0.1, 0.2);
      final double calculatedDistance = (_velocityX * deltaTime) +
          (0.5 * motionAcceleration * deltaTime * deltaTime);
      _estimatedDistance += calculatedDistance;

      if (!_stepController.isClosed) {
        _stepController.add(_stepCount);
      }
      _stepCount++;
    }
  }

  void _updateVelocityAndDistance(
      double linearAccX, double linearAccY, double linearAccZ, AccelerometerEvent event) {
    if (_lastTimestamp != null) {
      final DateTime now = DateTime.now();
      final double time = (now.difference(_lastTimestamp!).inMilliseconds) / 1000.0;
      final double deltaTime = applyDeltaTimeThreshold(time, 0.1, 0.2);
      final double rotatedAccX = linearAccX * cos(_pitch) * cos(_yaw) +
          linearAccY * (cos(_pitch) * sin(_yaw)) -
          linearAccZ * sin(_pitch);

      final double rotatedAccY =
          linearAccX * (sin(_roll) * sin(_pitch) * cos(_yaw) - cos(_roll) * sin(_yaw)) +
              linearAccY * (cos(_roll) * cos(_yaw) + sin(_roll) * sin(_pitch) * sin(_yaw)) +
              linearAccZ * cos(_pitch) * sin(_roll);

      final double rotatedAccZ =
          linearAccX * (cos(_roll) * sin(_pitch) * cos(_yaw) + sin(_roll) * sin(_yaw)) +
              linearAccY * (sin(_roll) * cos(_yaw) - cos(_roll) * sin(_pitch) * sin(_yaw)) +
              linearAccZ * cos(_pitch) * cos(_roll);

      final double accX = _applyDeadzone(rotatedAccX, _accelerationDeadzoneThreshold);
      final double accY = _applyDeadzone(rotatedAccY, _accelerationDeadzoneThreshold);
      final double accZ = _applyDeadzone(rotatedAccZ, _accelerationDeadzoneThreshold);

      if (accX == 0.0 && accY == 0.0 && accZ == 0.0) {
        _velocityX = 0.0;
        _velocityY = 0.0;
        _velocityZ = 0.0;
      } else {
        _velocityX += accX * deltaTime;
        _velocityY += accY * deltaTime;
        _velocityZ += accZ * deltaTime;

        _velocityX = _kalmanFilterX.update(_velocityX);
        _velocityY = _kalmanFilterY.update(_velocityY);
        _velocityZ = _kalmanFilterZ.update(_velocityZ);

        _velocityX = _applyDeadzone(_velocityX, _velocityDeadzoneThreshold);
        _velocityY = _applyDeadzone(_velocityY, _velocityDeadzoneThreshold);
        _velocityZ = _applyDeadzone(_velocityZ, _velocityDeadzoneThreshold);
      }
      final double distanceX = _velocityX * deltaTime;
      final double distanceY = _velocityY * deltaTime;
      final double distanceZ = _velocityZ * deltaTime;
      final double totalDistance =
          sqrt(distanceX * distanceX + distanceY * distanceY + distanceZ * distanceZ);
      _estimatedDistance += totalDistance;
      print(
          "Estimated Distance: $_estimatedDistance | Velocities: $_velocityX, $_velocityY, $_velocityZ");
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
