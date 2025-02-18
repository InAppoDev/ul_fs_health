// import 'dart:math';
// import 'package:flutter_blue_plus/flutter_blue_plus.dart';
// import 'kalman_filter.dart';
//
// class BeaconTracking {
//   static const String EddystoneServiceId = '0000feaa-0000-1000-8000-00805f9b34fb';
//   KalmanFilter kalmanFilter = KalmanFilter(0.1, 1.0); // Kalman filter initialization
//   int txPowerAt1Meter = -59; // Example TxPower (usually measured for each beacon)
//   double pathLossExponent =
//       2.0; // Path loss exponent (can vary between 2 and 4 depending on environment)
//
//   // Start scanning for beacons and filter RSSI values for Eddystone only
//   Stream<ScanResult?> startBeaconScan() {
//     return FlutterBluePlus.scanResults.asyncMap((scanResults) {
//       if (scanResults.isNotEmpty) {
//         final res = scanResults.last;
//         if (res.advertisementData.serviceUuids.contains(Guid(EddystoneServiceId))) {
//           return res;
//         }
//       }
//       return null; // Returning null if no Eddystone beacon found
//     }); // Cast to ScanResult to ensure the stream type is correct
//   }
//
//   // Calculate distance using RSSI value and Log Distance Path Loss model
//   double calculateDistance(double rssi) {
//     // Kalman Filter to smooth RSSI value
//     final double filteredRssi = kalmanFilter.apply(rssi).x;
//
//     // Log Distance Path Loss formula
//     final double distance =
//         pow(10, (filteredRssi - txPowerAt1Meter) / (10 * pathLossExponent)).toDouble();
//     return distance;
//   }
// }
