
class KalmanFilter {
  double _estimate = 0.0;
  double _errorCovariance = 1.0;
  final double _processNoise = 1e-5;
  final double _measurementNoise = 0.1;

  double update(double measurement) {
    final double kalmanGain = _errorCovariance / (_errorCovariance + _measurementNoise);
    _estimate = _estimate + kalmanGain * (measurement - _estimate);
    _errorCovariance = (1 - kalmanGain) * _errorCovariance + _processNoise;

    return _estimate;
  }
}
