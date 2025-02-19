import 'dart:async';
import 'dart:math';

import 'package:pedometer/pedometer.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:sensors_plus/sensors_plus.dart';
import 'package:vector_math/vector_math.dart';

import '../../models/tracking/accelerometer_data.dart';
import 'helpers/kalman_filter.dart';
import 'helpers/mahony_filter.dart';
import 'indoor_tracking_service.dart';

mixin IndoorTrackingMixin {
  double lowPassFilter(double newData, double prevData, double alpha) {
    return prevData + alpha * (newData - prevData);
  }

  double applyDeadZone(double value, double threshold) {
    return (value.abs() < threshold) ? 0.0 : value;
  }
}

class IndoorTrackingServiceImp with IndoorTrackingMixin implements IndoorTrackingService {
  double _estimatedDistance = 0.0;
  final MahonyFilter mahonyFilter = MahonyFilter();
  StreamSubscription<PedestrianStatus>? _pedestrianStatusStream;

  bool _isMoved = false;

  @override
  bool get isMoved => _isMoved;

  @override
  bool get isTurned => _isTurned;

  final KalmanFilter _kalmanFilter = KalmanFilter(measurementNoise: 0.001);
  final KalmanFilter _kalmanFilterGyro = KalmanFilter(measurementNoise: 0.001);

  StreamSubscription<AccelerometerEvent>? _accelerometerSubscription;
  StreamSubscription<GyroscopeEvent>? _gyroscopeSubscription;

  Timer? _timer;

  AccelerometerEvent? _currentEvent;
  GyroscopeEvent? _currentGyroEvent;
  double _prevTime = 0.0;

  Vector3 _velocity = Vector3.zero();

  double _yaw = 0.0;
  double _pitch = 0.0;
  double _roll = 0.0;
  double _prevYaw = 0.0;

  Quaternion _currentQuat = Quaternion.identity();
  Quaternion _prevQuat = Quaternion.identity();

  bool _isTurned = false;


  @override
  double get estimatedDistanceTravelled => _estimatedDistance;

  List<double> quaternionToEuler(Quaternion q) {
    final double qw = q.w; // w (scalar)
    final double qx = q.x; // x
    final double qy = q.y; // y
    final double qz = q.z; // z

    // Roll (φ) - Rotation around X-axis
    final double roll = atan2(2.0 * (qw * qx + qy * qz), 1.0 - 2.0 * (qx * qx + qy * qy));

    // Pitch (θ) - Rotation around Y-axis
    final double sinp = 2.0 * (qw * qy - qz * qx);
    final double pitch = (sinp.abs() >= 1.0) ? (sinp.sign * (pi / 2)) : asin(sinp);

    // Yaw (ψ) - Rotation around Z-axis
    final double yaw = atan2(2.0 * (qw * qz + qx * qy), 1.0 - 2.0 * (qy * qy + qz * qz));

    return [roll, pitch, yaw]; // Return values in radians
  }

  Future<bool> _checkActivityRecognitionPermission() async {
    bool granted = await Permission.activityRecognition.isGranted;
    final bool granted2 = await Permission.sensors.isGranted;

    if (!granted) {
      granted = await Permission.activityRecognition.request() == PermissionStatus.granted;
    }
    if (!granted2) {
      granted = await Permission.sensors.request() == PermissionStatus.granted;
    }

    return granted;
  }

  Future<void> initPlatformState() async {
    final bool granted = await _checkActivityRecognitionPermission();
    if (!granted) {
      print("errrr pedometer");
      return;
      // tell user, the app will not work
    }
  }


  // helper for quaternion dot product
  double quaternionDotProduct(Quaternion q1, Quaternion q2) {
    return q1.w * q2.w + q1.x * q2.x + q1.y * q2.y + q1.z * q2.z;
  }


  // difference between quaternions in radians
  double quaternionAngleDifference(Quaternion q1, Quaternion q2) {
    // Calculate the dot product of the quaternions
    double dot = quaternionDotProduct(q1, q2);

    // Clip the value to avoid NaN due to floating-point precision issues
    dot = dot.clamp(-1.0, 1.0);

    // The angle difference is computed from the dot product
    return 2 * acos(dot); // Result is in radians
  }

  @override
  Future<void> startTracking(
      {required bool Function() onRunning, required void Function(double) onUpdate}) async {
    await initPlatformState();
    _pedestrianStatusStream = Pedometer.pedestrianStatusStream.listen((status) {
      _isMoved = status.status != 'stopped';
      print("KKKK::: ${status.status}");
    });
    _timer = Timer.periodic(const Duration(milliseconds: 10), (timer) {
      _estimatedDistance = 0.0;
      _velocity = Vector3.zero();
      if (_currentEvent != null && _currentGyroEvent != null) {
        final Vector3 filtered =
            _kalmanFilter.apply(_currentEvent!.x, _currentEvent!.y, _currentEvent!.z);
        double ax = filtered.x;
        double ay = filtered.y;
        double az = filtered.z;

        final Vector3 filteredGyro = _kalmanFilterGyro.apply(
            _currentGyroEvent!.x, _currentGyroEvent!.y, _currentGyroEvent!.z);
        final double gx = filteredGyro.x;
        final double gy = filteredGyro.y;
        final double gz = filteredGyro.z;

        mahonyFilter.update(ax, ay, az, gx, gy, gz);

        _currentQuat = mahonyFilter.quaternion;
        // _currentQuat = Quaternion(x, y, z, w)
        // Correct gravity from the accelerometer reading
        final double gravityX =
            2 * (_currentQuat.x * _currentQuat.z - _currentQuat.w * _currentQuat.y);
        final double gravityY =
            2 * (_currentQuat.w * _currentQuat.x + _currentQuat.y * _currentQuat.z);
        final double gravityZ = _currentQuat.w * _currentQuat.w -
            _currentQuat.x * _currentQuat.x -
            _currentQuat.y * _currentQuat.y +
            _currentQuat.z * _currentQuat.z;

        final euler = quaternionToEuler(_currentQuat);
        final double angularChange = quaternionAngleDifference(_prevQuat, _currentQuat);

        // Check if the angular change exceeds a threshold (e.g., 15 degrees)
        _isTurned = angularChange > radians(30);

        _prevQuat = _currentQuat;
        _roll = euler[0];
        _pitch = euler[1];
        _yaw = euler[2];


        ax -= gravityX;
        ay -= gravityY;
        az -= gravityZ;

        final double currentTime = timer.tick / 100.0;
        final double deltaT = currentTime - _prevTime;
        _prevTime = currentTime;

        const double accelerationFactor = 9.8; // accelerometer measures with g-unit - 9.8
        final linearAcc = Vector3(ax, ay, az) * accelerationFactor;

        final bool isRunning = onRunning();
        if (_isMoved && isRunning) {
          _onStepDetected(linearAcc, deltaT);
          _updateVelocityAndDistance(linearAcc, deltaT);
        }

        onUpdate(_estimatedDistance);
      }
    });

    _accelerometerSubscription = accelerometerEvents.listen((AccelerometerEvent event) {
      _currentEvent = event;
    });

    _gyroscopeSubscription = gyroscopeEvents.listen((GyroscopeEvent event) {
      _currentGyroEvent = event;
      // _gyros = Vector3(x: event.x, y: event.y, z: event.z);
      //
      // _yaw += _gyros.z * deltaTime;
      // _pitch += _gyros.x * deltaTime;
      // _roll += _gyros.y * deltaTime;
      //
      // if (_yaw > pi) {
      //   _yaw -= 2 * pi;
      // }
      //
      // if (_yaw < -pi) {
      //   _yaw += 2 * pi;
      // }
      //
      // // Check for a significant change in yaw (e.g., more than 30 degrees)
      // final double deltaYaw = (_yaw - _prevYaw).abs();
      // _isTurned = deltaYaw > pi / 6;
      //
      // // Update previous yaw
      // _prevYaw = _yaw;
    });
  }

  @override
  void reset() {
    _estimatedDistance = 0.0;
    _velocity = Vector3.zero();
  }

  @override
  Future<void> stopTracking() async {
    await _accelerometerSubscription?.cancel();
    await _gyroscopeSubscription?.cancel();
    _timer?.cancel();
    await _pedestrianStatusStream?.cancel();
  }

  void _onStepDetected(Vector3 acc, double deltaTime) {
    final double motionAcceleration = acc.length;

    final double calculatedDistance = 0.5 * motionAcceleration * deltaTime * deltaTime; // a*t^2 / 2

    _estimatedDistance += calculatedDistance;
  }

  void _updateVelocityAndDistance(Vector3 linearAcc, double deltaTime) {
    final Vector3 rotatedAcc = Vector3(
        linearAcc.x * cos(_pitch) * cos(_yaw) +
            linearAcc.y * (cos(_pitch) * sin(_yaw)) -
            linearAcc.z * sin(_pitch),
        linearAcc.x * (sin(_roll) * sin(_pitch) * cos(_yaw) - cos(_roll) * sin(_yaw)) +
            linearAcc.y * (cos(_roll) * cos(_yaw) + sin(_roll) * sin(_pitch) * sin(_yaw)) +
            linearAcc.z * cos(_pitch) * sin(_roll),
        linearAcc.x * (cos(_roll) * sin(_pitch) * cos(_yaw) + sin(_roll) * sin(_yaw)) +
            linearAcc.y * (sin(_roll) * cos(_yaw) - cos(_roll) * sin(_pitch) * sin(_yaw)) +
            linearAcc.z * cos(_pitch) * cos(_roll));

    final Vector3 acc = Vector3(rotatedAcc.x, rotatedAcc.y, rotatedAcc.z);

    if (acc.x == 0.0 && acc.y == 0.0 && acc.z == 0.0) {
      _velocity = Vector3.zero();
    } else {
      _velocity = Vector3(acc.x * deltaTime, acc.y * deltaTime, acc.z * deltaTime);
    }
    final Vector3 distance =
        Vector3(_velocity.x * deltaTime, _velocity.y * deltaTime, _velocity.z * deltaTime);
    final double totalDistance = distance.length;
    _estimatedDistance += totalDistance; // angular velocity radius
  }

  @override
  Future<void> dispose() async {
    _timer?.cancel();
    await _accelerometerSubscription?.cancel();
    await _pedestrianStatusStream?.cancel();
    await _gyroscopeSubscription?.cancel();
  }

  @override
  AccelerometerData getAccelerometerData() => AccelerometerData(
      distanceTraveled: _estimatedDistance, isMoved: _isMoved, isTurned: _isTurned);
}
