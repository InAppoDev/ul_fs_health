// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [DashboardMenuScreen]
class DashboardMenuRoute extends PageRouteInfo<void> {
  const DashboardMenuRoute({List<PageRouteInfo>? children})
      : super(
          DashboardMenuRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardMenuRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const DashboardMenuScreen();
    },
  );
}

/// generated route for
/// [GPAQInitialScreen]
class GPAQInitialRoute extends PageRouteInfo<GPAQInitialRouteArgs> {
  GPAQInitialRoute({
    Key? key,
    bool shouldAuthenticate = false,
    List<PageRouteInfo>? children,
  }) : super(
          GPAQInitialRoute.name,
          args: GPAQInitialRouteArgs(
            key: key,
            shouldAuthenticate: shouldAuthenticate,
          ),
          initialChildren: children,
        );

  static const String name = 'GPAQInitialRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<GPAQInitialRouteArgs>(
          orElse: () => const GPAQInitialRouteArgs());
      return GPAQInitialScreen(
        key: args.key,
        shouldAuthenticate: args.shouldAuthenticate,
      );
    },
  );
}

class GPAQInitialRouteArgs {
  const GPAQInitialRouteArgs({
    this.key,
    this.shouldAuthenticate = false,
  });

  final Key? key;

  final bool shouldAuthenticate;

  @override
  String toString() {
    return 'GPAQInitialRouteArgs{key: $key, shouldAuthenticate: $shouldAuthenticate}';
  }
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomeScreen();
    },
  );
}

/// generated route for
/// [LEFSScreen]
class LEFSRoute extends PageRouteInfo<LEFSRouteArgs> {
  LEFSRoute({
    Key? key,
    bool shouldAuthenticate = false,
    List<PageRouteInfo>? children,
  }) : super(
          LEFSRoute.name,
          args: LEFSRouteArgs(
            key: key,
            shouldAuthenticate: shouldAuthenticate,
          ),
          initialChildren: children,
        );

  static const String name = 'LEFSRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args =
          data.argsAs<LEFSRouteArgs>(orElse: () => const LEFSRouteArgs());
      return LEFSScreen(
        key: args.key,
        shouldAuthenticate: args.shouldAuthenticate,
      );
    },
  );
}

class LEFSRouteArgs {
  const LEFSRouteArgs({
    this.key,
    this.shouldAuthenticate = false,
  });

  final Key? key;

  final bool shouldAuthenticate;

  @override
  String toString() {
    return 'LEFSRouteArgs{key: $key, shouldAuthenticate: $shouldAuthenticate}';
  }
}

/// generated route for
/// [LoginScreen]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const LoginScreen();
    },
  );
}

/// generated route for
/// [ProfileScreen]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ProfileScreen();
    },
  );
}

/// generated route for
/// [QuestionnaireInitialScreen]
class QuestionnaireInitialRoute
    extends PageRouteInfo<QuestionnaireInitialRouteArgs> {
  QuestionnaireInitialRoute({
    Key? key,
    bool shouldAuthenticate = false,
    List<PageRouteInfo>? children,
  }) : super(
          QuestionnaireInitialRoute.name,
          args: QuestionnaireInitialRouteArgs(
            key: key,
            shouldAuthenticate: shouldAuthenticate,
          ),
          initialChildren: children,
        );

  static const String name = 'QuestionnaireInitialRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<QuestionnaireInitialRouteArgs>(
          orElse: () => const QuestionnaireInitialRouteArgs());
      return QuestionnaireInitialScreen(
        key: args.key,
        shouldAuthenticate: args.shouldAuthenticate,
      );
    },
  );
}

class QuestionnaireInitialRouteArgs {
  const QuestionnaireInitialRouteArgs({
    this.key,
    this.shouldAuthenticate = false,
  });

  final Key? key;

  final bool shouldAuthenticate;

  @override
  String toString() {
    return 'QuestionnaireInitialRouteArgs{key: $key, shouldAuthenticate: $shouldAuthenticate}';
  }
}

/// generated route for
/// [SignupScreen]
class SignupRoute extends PageRouteInfo<void> {
  const SignupRoute({List<PageRouteInfo>? children})
      : super(
          SignupRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignupRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SignupScreen();
    },
  );
}

/// generated route for
/// [SitToStandResultScreen]
class SitToStandResultRoute extends PageRouteInfo<void> {
  const SitToStandResultRoute({List<PageRouteInfo>? children})
      : super(
          SitToStandResultRoute.name,
          initialChildren: children,
        );

  static const String name = 'SitToStandResultRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SitToStandResultScreen();
    },
  );
}

/// generated route for
/// [SitToStandScreen]
class SitToStandRoute extends PageRouteInfo<void> {
  const SitToStandRoute({List<PageRouteInfo>? children})
      : super(
          SitToStandRoute.name,
          initialChildren: children,
        );

  static const String name = 'SitToStandRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SitToStandScreen();
    },
  );
}

/// generated route for
/// [SitToStandTestStartScreen]
class SitToStandTestStartRoute extends PageRouteInfo<void> {
  const SitToStandTestStartRoute({List<PageRouteInfo>? children})
      : super(
          SitToStandTestStartRoute.name,
          initialChildren: children,
        );

  static const String name = 'SitToStandTestStartRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SitToStandTestStartScreen();
    },
  );
}

/// generated route for
/// [SplashScreen]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SplashScreen();
    },
  );
}

/// generated route for
/// [WalkTestInitialScreen]
class WalkTestInitialRoute extends PageRouteInfo<void> {
  const WalkTestInitialRoute({List<PageRouteInfo>? children})
      : super(
          WalkTestInitialRoute.name,
          initialChildren: children,
        );

  static const String name = 'WalkTestInitialRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const WalkTestInitialScreen();
    },
  );
}

/// generated route for
/// [WalkTestNavigatorScreen]
class WalkTestNavigatorRoute extends PageRouteInfo<void> {
  const WalkTestNavigatorRoute({List<PageRouteInfo>? children})
      : super(
          WalkTestNavigatorRoute.name,
          initialChildren: children,
        );

  static const String name = 'WalkTestNavigatorRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const WalkTestNavigatorScreen();
    },
  );
}

/// generated route for
/// [WalkTestResultScreen]
class WalkTestResultRoute extends PageRouteInfo<void> {
  const WalkTestResultRoute({List<PageRouteInfo>? children})
      : super(
          WalkTestResultRoute.name,
          initialChildren: children,
        );

  static const String name = 'WalkTestResultRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const WalkTestResultScreen();
    },
  );
}

/// generated route for
/// [WalkTestScreen]
class WalkTestRoute extends PageRouteInfo<void> {
  const WalkTestRoute({List<PageRouteInfo>? children})
      : super(
          WalkTestRoute.name,
          initialChildren: children,
        );

  static const String name = 'WalkTestRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const WalkTestScreen();
    },
  );
}

/// generated route for
/// [WalkTestStartScreen]
class WalkTestStartRoute extends PageRouteInfo<void> {
  const WalkTestStartRoute({List<PageRouteInfo>? children})
      : super(
          WalkTestStartRoute.name,
          initialChildren: children,
        );

  static const String name = 'WalkTestStartRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const WalkTestStartScreen();
    },
  );
}
