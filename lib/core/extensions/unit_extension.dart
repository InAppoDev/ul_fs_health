import 'string_extension.dart';

extension UnitExtension on double {
  double get toDistanceKm => this / 1000;
  double get toSpeedKmH => this * 3.6;

  String get formattedSpeedKmh => '$formattedNumber km/h';
  String get formattedSpeedMs => '$formattedNumber m/s';
  String get formattedDistanceM => '$formattedNumber m';
  String get formattedDistanceKm => '$formattedNumber km';

  String get formattedSpeedKmhReplaced => '$formattedNumberReplaced km/h';
  String get formattedSpeedMsReplaced => '$formattedNumberReplaced m/s';
  String get formattedDistanceMReplaced => '$formattedNumberReplaced m';
  String get formattedDistanceKmReplaced => '$formattedNumberReplaced km';

  String get formattedSpeedKmhRounded => '${round()} km/h';
  String get formattedSpeedMsRounded => '${round()} m/s';
  String get formattedDistanceMRounded => '${round()} m';
  String get formattedDistanceKmRounded => '${round()} km';


  String get formattedNumber => toStringAsFixed(2);
  String get formattedNumberReplaced => toStringAsFixed(2).replacedPrecision;
}
