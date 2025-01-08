import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../walk_test/bloc/walk_test_bloc.dart';

@RoutePage()
class WalkTestNavigatorScreen extends StatelessWidget {
  const WalkTestNavigatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WalkTestBloc(),
      child: const AutoRouter(),
    );
  }
}
