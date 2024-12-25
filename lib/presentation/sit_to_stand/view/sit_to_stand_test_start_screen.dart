// ignore_for_file: inference_failure_on_function_invocation, no_self_assignments

import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sensors_plus/sensors_plus.dart';

import '../../../core/constants/gaps.dart';
import '../../../core/extensions/number_extension.dart';
import '../../../core/themes/app_text_styles.dart';
import '../../../gen/assets.gen.dart';
import '../../../generated/l10n.dart';
import '../../utils/widgets/feature_test_header.dart';
import '../../utils/widgets/repetition_counter.dart';
import '../../utils/widgets/simple_app_bar_widget.dart';
import '../../utils/widgets/submit_button.dart';

@RoutePage()
class SitToStandTestStartScreen extends StatefulWidget {
  const SitToStandTestStartScreen({super.key});

  @override
  State<SitToStandTestStartScreen> createState() =>
      _SitToStandTestStartScreenState();
}

class _SitToStandTestStartScreenState extends State<SitToStandTestStartScreen> {
  @override
  Widget build(BuildContext context) {
    return const SitToStandTestStartContent();
  }
}

class SitToStandTestStartContent extends StatefulWidget {
  const SitToStandTestStartContent({super.key});

  @override
  State<SitToStandTestStartContent> createState() =>
      _SitToStandTestStartContentState();
}

class _SitToStandTestStartContentState
    extends State<SitToStandTestStartContent> {
  final List<double> times = [];
  final List<DateTime> timestamps = [];
  StreamSubscription<AccelerometerEvent>? _accelerometerSubscription;
  bool _isTestRunning = false;
  bool _isSitting = true;
  double _avgTime = 0.0;
  double _avgVelocity = 0.0;
  bool _isTestReady = false;
  bool _isTestFinished = false;
  int _currentRepetition = 1;
  final int _totalRepetitions = 5;

  @override
  void dispose() {
    _accelerometerSubscription?.cancel();
    super.dispose();
  }

  Future<void> _startTest() async {
    setState(() {
      _isTestRunning = true;
      _isTestReady = true;
      _isTestFinished = false;
    });
    if (_currentRepetition < _totalRepetitions) {
      setState(() {
        _currentRepetition++;
      });
    }

    _accelerometerSubscription =
        accelerometerEvents.listen((AccelerometerEvent event) {
      if (_isTestRunning) {
        final double zValue = event.z;

        if (_isSitting && zValue > 9) {
          timestamps.add(DateTime.now());
          _isSitting = false;
        } else if (!_isSitting && zValue < 9) {
          final endTime = DateTime.now();
          final startTime = timestamps.last;
          final duration =
              endTime.difference(startTime).inMilliseconds / 1000.0;
          times.add(duration);
          _avgTime = times.reduce((a, b) => a + b) / times.length;
          _isSitting = true;
        }
      }
    });
  }

  void _endTest() {
    if (_isTestRunning) {
      setState(() {
        _isTestRunning = false;
        _isTestFinished = true;
      });
      _accelerometerSubscription?.cancel();
      _accelerometerSubscription = null;
      _avgVelocity = 1.0 / _avgTime;
    }
  }

  void _testReadyToStart() {
    setState(() {
      _isTestReady = true;
      _isTestFinished = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBarWidget(
        onInfoPress: () {},
        showBackButton: true,
      ),
      body: Column(
        children: [
          Gaps.large.spaceVertical,
          FeatureTestHeader(
            title: S.current.sitToStandTestTitleText,
            leading: Assets.icons.iconSitDownTest,
          ),
          (Gaps.largest + Gaps.large).spaceVertical,
          if (_currentRepetition == _totalRepetitions)
            Text(
              S.current.lblTestFinished.toUpperCase(),
              style: header2.copyWith(
                  color: Theme.of(context).colorScheme.primary),
            ),
          Gaps.largest.spaceVertical,
          Align(
              alignment: Alignment.topLeft,
              child: Text(
                S.current.lblSitToStandRepetitions.toUpperCase(),
                style: body1,
              )),
          Gaps.largest.spaceVertical,
          RepetitionCounter(
            repetition: _currentRepetition,
            totalRepetitions: _totalRepetitions,
          ),
          if (_isTestFinished)
            Column(
              children: [
                Text(
                    '${S.current.lblVelocity} ${_avgVelocity.toStringAsFixed(2)} m/s'),
                Text(
                    '${S.current.lblPower.toUpperCase()} ${(9.8 / _avgTime).toStringAsFixed(2)} W/kg'),
              ],
            ),
          if (_currentRepetition != _totalRepetitions)
            Padding(
              padding: Gaps.larger.paddingAll.copyWith(top: Gaps.largest),
              child: SubmitButton(
                onPressed: !_isTestReady
                    ? _testReadyToStart
                    : _isTestRunning
                        ? _endTest
                        : _startTest,
                title: !_isTestReady
                    ? S.current.btnTestStartText.toUpperCase()
                    : _isTestRunning
                        ? S.current.btnTestStopText.toUpperCase()
                        : S.current.btnTestStartText.toUpperCase(),
                backgroundColor: Theme.of(context).colorScheme.secondary,
                titleColor: Theme.of(context).colorScheme.onSecondary,
              ),
            ),
          if (_currentRepetition == _totalRepetitions)
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                S.current.lblBestSitToStandResult,
              ),
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(S.current.lblTime, style: body1),
              Text(S.current.lblVelocity, style: body1),
            ],
          )
        ],
      ),
    );
  }
}
