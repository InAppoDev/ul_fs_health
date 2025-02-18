// import 'dart:async';
// import 'dart:math';
// import 'dart:ui';
//
// import 'bacon_tracking.dart';
// // TODO calculate using bluetooth signal. At this moment not used.
// class Beacon {
//   Beacon({required this.id, required this.x, required this.y});
//
//   final String id;
//   final double x;
//   final double y;
// }
//
// class LocalizationTracking {
//   LocalizationTracking() : _distance = 0.0;
//   final BeaconTracking beaconTracking = BeaconTracking();
//
//   double get distance => _distance;
//
//   double _distance;
//
//   final double _strongSignalThreshold = -60; // RSSI threshold for strong signal
//
//   bool _isStrongSignal = false;
//
//   double _rssi = 0.0;
//
//   double get rssi => _rssi;
//
//   bool get isStrongSignal => _isStrongSignal;
//
//   StreamSubscription<double?>? _streamSubscription;
//
//   final List<Beacon> beacons = [
//     Beacon(id: '1', x: 0.0, y: 0.0), // Beacon 1 (Anchor)
//     Beacon(id: '2', x: 10.0, y: 0.0), // Beacon 2 (Anchor)
//     Beacon(id: '3', x: 5.0, y: 8.0), // Beacon 3 (Anchor)
//   ];
//
//   // Perform trilateration to get position based on distances
//   Map<String, double> trilateration(List<double> distances) {
//     // Extract beacon coordinates
//     final beacon1 = beacons[0];
//     final beacon2 = beacons[1];
//     final beacon3 = beacons[2];
//
//     final double d1 = distances[0];
//     final double d2 = distances[1];
//     final double d3 = distances[2];
//
//     final double x1 = beacon1.x;
//     final double y1 = beacon1.y;
//     final double x2 = beacon2.x;
//     final double y2 = beacon2.y;
//     final double x3 = beacon3.x;
//     final double y3 = beacon3.y;
//
//     // Trilateration equations
//     final double A = 2 * (x2 - x1);
//     final double B = 2 * (y2 - y1);
//     final double C = 2 * (x3 - x1);
//     final double D = 2 * (y3 - y1);
//
//     final double E =
//         pow(d1, 2) - pow(d2, 2) - pow(x1, 2) + pow(x2, 2) - pow(y1, 2) + pow(y2, 2).toDouble();
//     final double F =
//         pow(d1, 2) - pow(d3, 2) - pow(x1, 2) + pow(x3, 2) - pow(y1, 2) + pow(y3, 2).toDouble();
//
//     final double x = (E - F) / (A * D - B * C);
//     final double y = (E - A * x) / B;
//
//     return {'x': x, 'y': y};
//   }
//
//   // Start tracking and get position
//   Stream<double?> collect() async* {
//     final List<double> distances = []; // To store distances from beacons
//
//     await for (final scanResult in beaconTracking.startBeaconScan()) {
//       print("LLLLLLLLL");
//       if (scanResult != null) {
//         final rssi = scanResult.rssi;
//         _isStrongSignal = rssi >= _strongSignalThreshold;
//         _rssi = rssi.toDouble();
//         if (_isStrongSignal) {
//           final double distance = beaconTracking.calculateDistance(scanResult.rssi.toDouble());
//
//           // Store the distance for the current beacon
//           distances.add(distance);
//
//           // When distances from all three beacons are collected, calculate position
//           if (distances.length == 3) {
//             final Map<String, double> position = trilateration(distances);
//             yield position['x']; // Yield the x-coordinate as the result
//             distances.clear(); // Reset distances for the next set of calculations
//           }
//         }
//       }
//       yield null;
//     }
//   }
//
//   // Start the tracking process
//   Future<void> startTracking({required VoidCallback onUpdate, required bool Function() onRunning}) async {
//
//     _streamSubscription = collect().listen((data) {
//       final isRunning = onRunning();
//       print("PPPP::: ${_isStrongSignal}");
//       if (isRunning) {
//         _distance = data ?? 0.0;
//       }
//       onUpdate();
//     });
//   }
//
//   Future<void> stopTracking() async{
//     await _streamSubscription?.cancel();
//     _streamSubscription = null;
//   }
//
//   // Reset tracking
//   void reset() {
//     _distance = 0.0;
//     _isStrongSignal = false;
//   }
//
//   // Dispose of any subscriptions
//   void dispose() {
//     _streamSubscription?.cancel();
//     _streamSubscription = null;
//     reset();
//   }
// }
