import 'package:auto_route/auto_route.dart';
import 'package:fithub/features/onboarding/screens/age_screen.dart';
import 'package:fithub/features/onboarding/screens/gender_screen.dart';
import 'package:fithub/features/onboarding/screens/goal_screen.dart';
import 'package:fithub/features/onboarding/screens/level_screen.dart';
import 'package:fithub/features/onboarding/screens/welcome_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      path: '/onboarding',
      page: WelcomeRoute.page,
      initial: true,
    ),
    AutoRoute(
      path: '/gender',
      page: GenderRoute.page,
    ),
    AutoRoute(
      path: '/age',
      page: AgeRoute.page
    ),
    AutoRoute(
      path: '/goal',
      page: GoalRoute.page
    ),
    AutoRoute(
      path: '/level',
      page: LevelRoute.page
    ),
  ];
}