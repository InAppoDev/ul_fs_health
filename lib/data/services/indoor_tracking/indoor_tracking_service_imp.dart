import 'dart:async';
import 'dart:math';
import 'package:sensors_plus/sensors_plus.dart';
import 'package:vector_math/vector_math.dart';
import '../../models/tracking/accelerometer_data.dart';
import 'helpers/kalman_filter.dart';
import 'helpers/mahony_filter.dart';
import 'indoor_tracking_service.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:pedometer/pedometer.dart';



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

  Vector3 applyHighPassFilterapplyHighPassFilter(Vector3 newAcc, Vector3 prevAcc, double alpha, Vector3 gravity) {
    return Vector3(
      alpha * (prevAcc.x + newAcc.x - gravity.x),
      alpha * (prevAcc.y + newAcc.y - gravity.y),
      alpha * (prevAcc.z + newAcc.z - gravity.z),
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
  double _estimatedDistance = 0.0;
  final MahonyFilter mahonyFilter = MahonyFilter();
  StreamSubscription<PedestrianStatus>? _pedestrianStatusStream;

  bool _isMoved = false;

  Vector3 _prevPos = Vector3.zero();


  @override
  bool get isMoved => _isMoved;

  @override
  bool get isTurned => _isTurned;

  final KalmanFilter _kalmanFilter = KalmanFilter(measurementNoise: 0.01);

  final KalmanFilter _kalmanFilterVelocity = KalmanFilter(measurementNoise: 0.01);

  StreamSubscription<AccelerometerEvent>? _accelerometerSubscription;
  StreamSubscription<GyroscopeEvent>? _gyroscopeSubscription;


  static const double _accelerationDeadZoneThreshold = 0.005;
  static const double _velocityDeadZoneThreshold = 0.001;

  Timer? _timer;


  AccelerometerEvent? _currentEvent;
  GyroscopeEvent? _currentGyroEvent;
  double _prevTime = 0.0;

  Vector3 _velocity = Vector3.zero();

  Vector3 _prevCoord = Vector3.zero();
  Vector3 _prevGyroCoord = Vector3.zero();

  double _yaw = 0.0;
  double _pitch = 0.0;
  double _roll = 0.0;

  bool _isTurned = false;


  static const double _gravityAlpha = 0.1;
  Vector3 _gravity = Vector3.zero();


  @override
  double get estimatedDistanceTravelled => _estimatedDistance;


  List<double> quaternionToEuler(List<double> q) {
    final double qw = q[0]; // w (scalar)
    final double qx = q[1]; // x
    final double qy = q[2]; // y
    final double qz = q[3]; // z

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
      granted = await Permission.activityRecognition.request() ==
          PermissionStatus.granted;
    }
    if (!granted2) {
      granted = await Permission.sensors.request() ==
          PermissionStatus.granted;
    }

    return granted;
  }

  Future<void> initPlatformState() async {
    final bool granted = await _checkActivityRecognitionPermission();
    if (!granted) {
      print("errrr pedometer");
      return ;
      // tell user, the app will not work
    }

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
      if (_currentEvent != null && _currentGyroEvent != null) {
        _kalmanFilter.predict(KalmanFilterType.x);
        _kalmanFilter.predict(KalmanFilterType.y);
        _kalmanFilter.predict(KalmanFilterType.z);
        final Vector3 filtered = _kalmanFilter.apply(_currentEvent!.x, _currentEvent!.y, _currentEvent!.z);
        double ax = filtered.x;
        double ay = filtered.y;
        double az = filtered.z;

        ax = lowPassFilter(ax, _prevCoord.x, 1.2);
        ay = lowPassFilter(ay, _prevCoord.y, 1.2);
        az = lowPassFilter(az, _prevCoord.z, 1.2);

        _prevCoord = Vector3(ax, ay, az);

        double gx = _currentGyroEvent!.x;
        double gy = _currentGyroEvent!.y;
        double gz = _currentGyroEvent!.z;

        gx = lowPassFilter(gx, _prevGyroCoord.x, _gravityAlpha);
        gy = lowPassFilter(gy, _prevGyroCoord.y, _gravityAlpha);
        gz = lowPassFilter(gz, _prevGyroCoord.z, _gravityAlpha);

        _prevGyroCoord = Vector3(gx, gy, gz);
        mahonyFilter.update(ax, ay, az, gx, gy, gz);

        final List<double> quaternion = mahonyFilter.quaternion;

        // Correct gravity from the accelerometer reading
        final double gravityX = 2 * (quaternion[1] * quaternion[3] - quaternion[0] * quaternion[2]);
        final double gravityY = 2 * (quaternion[0] * quaternion[1] + quaternion[2] * quaternion[3]);
        final double gravityZ = quaternion[0] * quaternion[0] -
            quaternion[1] * quaternion[1] -
            quaternion[2] * quaternion[2] +
            quaternion[3] * quaternion[3];

        final euler = quaternionToEuler(quaternion);
        _roll = euler[0];
        _pitch = euler[1];
        _yaw = euler[2];

        _gravity = Vector3(gravityX, gravityY, gravityZ);

        ax -= gravityX;
        ay -= gravityY;
        az -= gravityZ;

        final double currentTime = timer.tick / 100.0;
        final double deltaT = currentTime - _prevTime;
        _prevTime = currentTime;

        final linearAcc = Vector3(ax, ay, az);

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
      // final double deltaTime = applyDeltaTimeThreshold(time, 0.1, 0.2);
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
  }

  @override
  Future<void> stopTracking() async {
    await _accelerometerSubscription?.cancel();
    await _gyroscopeSubscription?.cancel();
    _timer?.cancel();
    await _pedestrianStatusStream?.cancel();
  }

  void _onStepDetected(Vector3 acc, double deltaTime) {
    final Vector3 diff = acc - _prevPos;

    final double motionAcceleration = diff.length;

    final double calculatedDistance = _velocity.x * deltaTime + 0.5 * motionAcceleration * deltaTime * deltaTime;

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

    final Vector3 acc = Vector3(
        applyDeadZone(rotatedAcc.x, _accelerationDeadZoneThreshold),
        applyDeadZone(rotatedAcc.y, _accelerationDeadZoneThreshold),
        applyDeadZone(rotatedAcc.z, _accelerationDeadZoneThreshold));

    if (acc.x == 0.0 && acc.y == 0.0 && acc.z == 0.0) {
      _velocity = Vector3.zero();
    } else {
      _velocity = Vector3(_velocity.x + acc.x * deltaTime, _velocity.y + acc.y * deltaTime,
          _velocity.z + acc.z * deltaTime);
      _kalmanFilterVelocity.predict(KalmanFilterType.x);
      _kalmanFilterVelocity.predict(KalmanFilterType.y);
      _kalmanFilterVelocity.predict(KalmanFilterType.z);
      _velocity = _kalmanFilterVelocity.apply(_velocity.x, _velocity.y, _velocity.z);
      _velocity = Vector3(
          dynamicDeadZone(_velocity.x, _velocityDeadZoneThreshold, 1.5),
          dynamicDeadZone(_velocity.y, _velocityDeadZoneThreshold, 1.5),
          dynamicDeadZone(_velocity.z, _velocityDeadZoneThreshold, 1.5));
    }
    final Vector3 distance =
        Vector3(_velocity.x * deltaTime, _velocity.y * deltaTime, _velocity.z * deltaTime);
    final double totalDistance = distance.length;
    _estimatedDistance += totalDistance;
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
      distanceTraveled: _estimatedDistance,
      isMoved: _isMoved,
      isTurned: _isTurned);
}
