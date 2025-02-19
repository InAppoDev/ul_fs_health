import 'package:vector_math/vector_math.dart';

enum KalmanFilterType { x, y, z }

class KalmanFilter {
  KalmanFilter({this.processNoise = 1e-5, this.measurementNoise = 0.1});

  final Vector3 _estimate = Vector3.zero();
  final Vector3 _error = Vector3.zero();
  final double processNoise;
  final double measurementNoise;

  void predict(KalmanFilterType type) {
    switch (type) {
      case KalmanFilterType.x:
        _error.setValues( _error.x + processNoise, _error.y, _error.z);
      case KalmanFilterType.y:
        _error.setValues( _error.x, _error.y + processNoise, _error.z);
      case KalmanFilterType.z:
        _error.setValues( _error.x, _error.y, _error.z + processNoise);
    }
  }

  double applyOne(double measurement, double estimate, double error, KalmanFilterType type) {
    double errorCovariance = error;
    final double kalmanGain = errorCovariance / (errorCovariance + measurementNoise);
    final double est = estimate + kalmanGain * (measurement - estimate);
    errorCovariance = (1 - kalmanGain) * errorCovariance + processNoise;
    switch (type) {
      case KalmanFilterType.x:
        _error.setValues(errorCovariance, _error.y, _error.z);
        _estimate.setValues(est, _estimate.y, _estimate.z);
      case KalmanFilterType.y:
        _error.setValues(_error.x, errorCovariance, _error.z);
        _estimate.setValues(_estimate.x, est, _estimate.z);
      case KalmanFilterType.z:
        _error.setValues(_error.x, _error.y, errorCovariance);
        _estimate.setValues(_estimate.x, _estimate.y, est);
    }
    return est;
  }

  Vector3 apply(double x, [double y = 0, double z = 0]) {
    final double newX = applyOne(x, _estimate.x, _error.x, KalmanFilterType.x);
    final double newY = applyOne(y, _estimate.y, _error.y, KalmanFilterType.y);
    final double newZ = applyOne(z, _estimate.z, _error.z, KalmanFilterType.z);
    return Vector3( newX,  newY,  newZ);
  }
}
