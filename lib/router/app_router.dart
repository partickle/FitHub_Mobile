import 'package:auto_route/auto_route.dart';
import 'package:fithub/ui/features/community/screens/community_screen.dart';
import 'package:fithub/ui/features/home/screens/course_list_screen.dart';
import 'package:fithub/ui/features/home/screens/home_screen.dart';
import 'package:fithub/ui/features/onboarding/screens/age_screen.dart';
import 'package:fithub/ui/features/onboarding/screens/gender_screen.dart';
import 'package:fithub/ui/features/onboarding/screens/goal_screen.dart';
import 'package:fithub/ui/features/onboarding/screens/level_screen.dart';
import 'package:fithub/ui/features/onboarding/screens/welcome_screen.dart';
import 'package:fithub/ui/features/profile/screens/profile_screen.dart';
import 'package:fithub/ui/features/progress/screens/progress_screen.dart';
import 'package:fithub/ui/features/registration/screens/authorization_screen.dart';
import 'package:fithub/ui/features/registration/screens/first_registration_screen.dart';
import 'package:fithub/ui/features/registration/screens/forgot_password_screen.dart';
import 'package:fithub/ui/features/registration/screens/new_password_screen.dart';
import 'package:fithub/ui/features/registration/screens/second_registration_screen.dart';
import 'package:fithub/ui/features/registration/screens/verification_screen.dart';
import 'package:fithub/router/navigation_bar_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/onboarding',
          page: WelcomeRoute.page,
        ),
        AutoRoute(
          path: '/onboarding/gender',
          page: GenderRoute.page,
        ),
        AutoRoute(
          path: '/onboarding/age',
          page: AgeRoute.page,
        ),
        AutoRoute(
          path: '/onboarding/goal',
          page: GoalRoute.page,
        ),
        AutoRoute(
          path: '/onboarding/level',
          page: LevelRoute.page,
        ),
        AutoRoute(
          path: '/registration/authorization',
          page: AuthorizationRoute.page,
        ),
        AutoRoute(
          path: '/registration/first-registration',
          page: FirstRegistrationRoute.page,
        ),
        AutoRoute(
          path: '/registration/second-registration',
          page: SecondRegistrationRoute.page,
        ),
        AutoRoute(
          path: '/registration/forgot-password',
          page: ForgotPasswordRoute.page,
        ),
        AutoRoute(
          path: '/registration/verification',
          page: VerificationRoute.page,
        ),
        AutoRoute(
          path: '/registration/new-password',
          page: NewPasswordRoute.page,
        ),
        AutoRoute(
          path: '/home',
          page: HomeRoute.page,
        ),
        AutoRoute(
          path: '/course-list',
          page: CourseListRoute.page,
        ),
        AutoRoute(
          path: '/',
          page: NavigationBarRoute.page,
          initial: true,
          children: [
            AutoRoute(
              path: 'home-tab',
              page: HomeTab.page,
              children: [
                AutoRoute(
                  path: 'home',
                  page: HomeRoute.page,
                  initial: true,
                ),
              ],
            ),
            AutoRoute(
              path: 'progress-tab',
              page: ProgressTab.page,
              children: [
                AutoRoute(
                  path: 'progress',
                  page: ProgressRoute.page,
                  initial: true,
                ),
              ],
            ),
            AutoRoute(
              path: 'community-tab',
              page: CommunityTab.page,
              children: [
                AutoRoute(
                  path: 'community',
                  page: CommunityRoute.page,
                  initial: true,
                ),
              ],
            ),
            AutoRoute(
              path: 'profile-tab',
              page: ProfileTab.page,
              children: [
                AutoRoute(
                  path: 'profile',
                  page: ProfileRoute.page,
                  initial: true,
                ),
              ],
            ),
          ],
        ),
      ];
}

@RoutePage(name: 'HomeTab')
class HomeTabPage extends AutoRouter {
  const HomeTabPage({super.key});
}

@RoutePage(name: 'ProgressTab')
class ProgressTabPage extends AutoRouter {
  const ProgressTabPage({super.key});
}

@RoutePage(name: 'CommunityTab')
class CommunityTabPage extends AutoRouter {
  const CommunityTabPage({super.key});
}

@RoutePage(name: 'ProfileTab')
class ProfileTabPage extends AutoRouter {
  const ProfileTabPage({super.key});
}
