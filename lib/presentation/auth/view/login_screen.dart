import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';

@RoutePage()
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const LoginContent();
  }
}

class LoginContent extends StatelessWidget {
  const LoginContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(S.current.lblLogin),
      ),
    );
  }
}
