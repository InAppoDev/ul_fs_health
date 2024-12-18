import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../di/service_locator.dart';
import '../domain/repositories/user_repository.dart';
import '../presentation/logic/user/user_bloc.dart';

Widget provideBlocProviders({required Widget child}) {
  return MultiBlocProvider(
    providers: [
      BlocProvider<UserBloc>(
        create: (_) => UserBloc(
          getIt<UserRepository>(),
        ),
      ),
    ],
    child: child,
  );
}
