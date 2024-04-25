// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AgeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AgeScreen(),
      );
    },
    GenderRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const GenderScreen(),
      );
    },
    GoalRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const GoalScreen(),
      );
    },
    LevelRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LevelScreen(),
      );
    },
    WelcomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const WelcomeScreen(),
      );
    },
  };
}

/// generated route for
/// [AgeScreen]
class AgeRoute extends PageRouteInfo<void> {
  const AgeRoute({List<PageRouteInfo>? children})
      : super(
          AgeRoute.name,
          initialChildren: children,
        );

  static const String name = 'AgeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [GenderScreen]
class GenderRoute extends PageRouteInfo<void> {
  const GenderRoute({List<PageRouteInfo>? children})
      : super(
          GenderRoute.name,
          initialChildren: children,
        );

  static const String name = 'GenderRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [GoalScreen]
class GoalRoute extends PageRouteInfo<void> {
  const GoalRoute({List<PageRouteInfo>? children})
      : super(
          GoalRoute.name,
          initialChildren: children,
        );

  static const String name = 'GoalRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LevelScreen]
class LevelRoute extends PageRouteInfo<void> {
  const LevelRoute({List<PageRouteInfo>? children})
      : super(
          LevelRoute.name,
          initialChildren: children,
        );

  static const String name = 'LevelRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [WelcomeScreen]
class WelcomeRoute extends PageRouteInfo<void> {
  const WelcomeRoute({List<PageRouteInfo>? children})
      : super(
          WelcomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'WelcomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
