import '../../../models/measurment/coordinate_model.dart';

enum KalmanFilterType { x, y, z }

class KalmanFilter {
  KalmanFilter({this.processNoise = 1e-5, this.measurementNoise = 0.1});

  CoordinateModel _estimate = const CoordinateModel();
  CoordinateModel _error = const CoordinateModel();
  final double processNoise;
  final double measurementNoise;

  double applyOne(double measurement, double estimate, double error, KalmanFilterType type) {
    double errorCovariance = error;
    final double kalmanGain = errorCovariance / (errorCovariance + measurementNoise);
    final double est = estimate + kalmanGain * (measurement - estimate);
    errorCovariance = (1 - kalmanGain) * errorCovariance + processNoise;
    switch (type) {
      case KalmanFilterType.x:
        _error = _error.copyWith(x: errorCovariance);
        _estimate = _estimate.copyWith(x: est);
      case KalmanFilterType.y:
        _error = _error.copyWith(y: errorCovariance);
        _estimate = _estimate.copyWith(y: est);
      case KalmanFilterType.z:
        _error = _error.copyWith(z: errorCovariance);
        _estimate = _estimate.copyWith(z: est);
    }
    return est;
  }

  CoordinateModel apply(double x, [double y = 0, double z = 0]) {
    final double newX = applyOne(x, _estimate.x, _error.x, KalmanFilterType.x);
    final double newY = applyOne(y, _estimate.y, _error.y, KalmanFilterType.y);
    final double newZ = applyOne(z, _estimate.z, _error.z, KalmanFilterType.z);
    return CoordinateModel(x: newX, y: newY, z: newZ);
  }
}
