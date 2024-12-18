import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/extensions/context_extension.dart';
import '../../../di/service_locator.dart';
import '../../../domain/repositories/auth_repository.dart';
import '../../../domain/repositories/user_repository.dart';
import '../../../generated/l10n.dart';
import '../bloc/auth/auth_bloc.dart';

@RoutePage()
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(
        getIt<AuthRepository>(),
        getIt<UserRepository>(),
      ),
      child: LoginContent(),
    );
  }
}

class LoginContent extends StatelessWidget {
  LoginContent({super.key});

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            if (state.status == AuthStatus.successSignup) {
              context.showSnackBarMessage(state.userId ?? 'NULL');
            } else if (state.status == AuthStatus.failure) {
              context.showSnackBarMessage(state.error ?? '');
            }
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _emailController,
                decoration: const InputDecoration(hintText: 'email'),
              ),
              TextField(
                controller: _passwordController,
                decoration: const InputDecoration(hintText: 'password'),
              ),
              ElevatedButton(
                  onPressed: () => context.read<AuthBloc>().add(
                        AuthEvent.signup(
                          _emailController.text,
                          _passwordController.text,
                        ),
                      ),
                  child: Text(S.current.btnCreateAccount))
            ],
          ),
        ),
      ),
    );
  }
}
