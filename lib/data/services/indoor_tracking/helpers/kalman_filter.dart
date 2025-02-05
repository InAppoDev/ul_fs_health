
import '../../../models/measurment/coordinate_model.dart';

enum KalmanFilterType {x, y, z}

class KalmanFilter {
  CoordinateModel _estimate = const CoordinateModel();
  CoordinateModel _error = const CoordinateModel();
  final double _processNoise = 1e-5;
  final double _measurementNoise = 0.1;

  double applyOne(double measurement, double estimate, double error, KalmanFilterType type) {
    double errorCovariance = error;
    final double kalmanGain = errorCovariance / (errorCovariance + _measurementNoise);
    final double est = estimate + kalmanGain * (measurement - estimate);
    errorCovariance = (1 - kalmanGain) * errorCovariance + _processNoise;
    switch(type) {
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

  CoordinateModel apply(double x, double y, double z) {
    final double newX = applyOne(x, _estimate.x, _error.x, KalmanFilterType.x);
    final double newY = applyOne(y, _estimate.y, _error.y, KalmanFilterType.y);
    final double newZ = applyOne(z, _estimate.z, _error.z, KalmanFilterType.z);
    return CoordinateModel(
      x: newX,
      y: newY,
      z: newZ
    );
  }
}
