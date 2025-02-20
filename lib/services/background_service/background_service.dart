// import 'dart:async';
// import 'dart:developer';
// import 'dart:ui';
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter_background_service/flutter_background_service.dart';
// import '../../data/services/tracking_background_service/tracking_background_service.dart';
//
// @pragma('vm:entry-point')
// Future<void> startBackgroundService() async {
//   final service = FlutterBackgroundService();
//   final bool isRunning = await service.isRunning();
//   if (!isRunning) {
//     await service.startService();
//   }
// }
//
// @pragma('vm:entry-point')
// Future<void> stopBackgroundService() async {
//   final service = FlutterBackgroundService();
//   service.invoke('stopService');
// }
//
// @pragma('vm:entry-point')
// Future<void> initializeService() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   DartPluginRegistrant.ensureInitialized();
//
//   final service = FlutterBackgroundService();
//
//   await service.configure(
//     iosConfiguration: IosConfiguration(
//       autoStart: false,
//       onForeground: onStartForeground,
//       onBackground: onIosBackground,
//     ),
//     androidConfiguration: AndroidConfiguration(
//       autoStart: false,
//       onStart: onStartForeground,
//       isForegroundMode: true,
//       autoStartOnBoot: false,
//     ),
//   );
//
//   service.on('startService').listen((event) async {
//     await TrackingBackgroundService.instance.startTracking();
//     log('startService event received in main isolate');
//     log('Event data: $event');  // Log the event data if necessary
//   });
//
//   service.on('stopService').listen((event) async {
//     await TrackingBackgroundService.instance.stopTracking();
//     log('startService event received in main isolate');
//     log('Event data: $event');  // Log the event data if necessary
//   });
// }
//
// @pragma('vm:entry-point')
// void onStartForeground(ServiceInstance service) {
//   service.on('stopService').listen((e) {
//     service.stopSelf();
//   });
//   service.on('startService').listen((e) {
//     service.invoke('startService');
//   });
//   log('Running on Foreground mode');
// }
//
// @pragma('vm:entry-point')
// Future<bool> onIosBackground(ServiceInstance service) async {
//   WidgetsFlutterBinding.ensureInitialized();
//   DartPluginRegistrant.ensureInitialized();
//
//   service.on('stopService').listen((e) {
//     service.stopSelf();
//   });
//   service.on('startService').listen((e) {
//     service.invoke('startService');
//   });
//   log('Running on Background mode');
//
//   return true;
// }
