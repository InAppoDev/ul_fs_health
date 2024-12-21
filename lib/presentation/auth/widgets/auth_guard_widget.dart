import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/extensions/context_extension.dart';
import '../../../core/router/app_router.dart';
import '../../logic/user/user_bloc.dart';

class AuthGuardWidget extends StatelessWidget {
  const AuthGuardWidget({super.key, required this.child, this.loading, this.isAuthRoute = false});

  final Widget child;
  final bool isAuthRoute;
  final Widget? loading;
  @override
  Widget build(BuildContext context) {
    return BlocListener<UserBloc, UserState>(
      listener: (context, state) {
        if (state.status != UserStatus.loading) {
          if (isAuthRoute) {
            if (state.status == UserStatus.authenticated) {
              context.router.replaceAll([const HomeRoute()]);
            }
          } else if(state.status == UserStatus.unauthenticated) {
            context.router.replaceAll([const LoginRoute()]);
          } else if (state.status == UserStatus.dataSaved) {
            context.router.push(const HomeRoute());
          } else if (state.status == UserStatus.failure) {
            context.showSnackBarMessage(state.errorMessage ?? '');
          }
        }
      },
      child: context.watch<UserBloc>().state.status == UserStatus.loading
          ? Center(child: loading ?? const CircularProgressIndicator())
          : child,
    );
  }
}
