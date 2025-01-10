import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../di/service_locator.dart';
import '../domain/repositories/sit_to_stand_repository.dart';
import '../domain/repositories/user_repository.dart';
import '../domain/repositories/walk_repository.dart';
import '../presentation/logic/user/user_bloc.dart';
import '../presentation/sit_to_stand/bloc/sit_to_stand_bloc.dart';
import '../presentation/sit_to_stand/bloc/sit_to_stand_event.dart';
import '../presentation/walk_test/bloc/walk_test_bloc.dart';

Widget provideBlocProviders({required Widget child}) {
  return MultiBlocProvider(
    providers: [
      BlocProvider<UserBloc>(
        create: (_) => UserBloc(
          getIt<UserRepository>(),
        )..add(const UserEvent.getUserData()),
      ),
    ],
    child: child,
  );
}
