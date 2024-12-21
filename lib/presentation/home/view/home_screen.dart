import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/router/app_router.dart';
import '../../../l10n/localizations_utils.dart';
import '../../auth/widgets/auth_guard_widget.dart';

// import '../../dashboard_menu/dashboard_menu_widget.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeContent();
  }
}

class HomeContent extends StatelessWidget {
  HomeContent({super.key});

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text(appLocalizations.lblAppName),
        actions: [
          IconButton(
              onPressed: () {
              },
              icon: const Icon(Icons.info_outline_rounded, color: Colors.red,))
        ],
        leading: IconButton(
            onPressed: () {
              context.router.push(const DashboardMenuRoute());
            },
            icon: const Icon(Icons.menu)),
      ),
      // drawer: const DashboardMenuWidget(),
      // drawerScrimColor: Colors.white,
      body: const AuthGuardWidget(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("kkk")
            ],
          ),
        ),
      ),
    );
  }
}
