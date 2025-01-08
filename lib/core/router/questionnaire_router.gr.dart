// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'questionnaire_router.dart';

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
