import 'package:intl/intl.dart';

extension DistanceExtension on double {
  String get formattedDistance {
      if (this < 1000) {
        return '${NumberFormat('0.0').format(this)} m';
      } else {
        final double km = this / 1000;
        return '${NumberFormat('0.00').format(km)} km';
      }
  }
  String get formattedSpeed {
    final double speedKmh = this * 3.6;
    return '${NumberFormat('0.00').format(speedKmh)} km/h';
  }
}
