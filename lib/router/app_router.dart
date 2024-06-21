import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fithub/features/community/ui/screens/community_screen.dart';
import 'package:fithub/features/community/ui/screens/complaint_screen.dart';
import 'package:fithub/features/community/ui/screens/reviews_screen.dart';
import 'package:fithub/features/community/ui/screens/search_course_screen.dart';
import 'package:fithub/features/community/ui/screens/write_review_screen.dart';
import 'package:fithub/features/courses/ui/screens/break_screen.dart';
import 'package:fithub/features/courses/ui/screens/congratulations_screen.dart';
import 'package:fithub/features/courses/ui/screens/course_screen.dart';
import 'package:fithub/features/courses/ui/screens/warm_up_screen.dart';
import 'package:fithub/features/home/ui/screens/course_list_screen.dart';
import 'package:fithub/features/home/ui/screens/home_screen.dart';
import 'package:fithub/features/onboarding/ui/screens/age_screen.dart';
import 'package:fithub/features/onboarding/ui/screens/gender_screen.dart';
import 'package:fithub/features/onboarding/ui/screens/goal_screen.dart';
import 'package:fithub/features/onboarding/ui/screens/level_screen.dart';
import 'package:fithub/features/onboarding/ui/screens/welcome_screen.dart';
import 'package:fithub/features/profile/ui/screens/profile_screen.dart';
import 'package:fithub/features/progress/ui/screens/progress_screen.dart';
import 'package:fithub/features/registration/ui/screens/authorization_screen.dart';
import 'package:fithub/features/registration/ui/screens/first_registration_screen.dart';
import 'package:fithub/features/registration/ui/screens/forgot_password_screen.dart';
import 'package:fithub/features/registration/ui/screens/new_password_screen.dart';
import 'package:fithub/features/registration/ui/screens/second_registration_screen.dart';
import 'package:fithub/features/registration/ui/screens/verification_screen.dart';
import 'package:fithub/ui/components/navigation_bar_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      path: '/onboarding',
      page: WelcomeRoute.page,
      initial: true
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
      path: '/courses/break',
      page: BreakRoute.page,
    ),
    AutoRoute(
      path: '/courses/course',
      page: CourseRoute.page,
    ),
    AutoRoute(
      path: '/courses/exercise-view',
      page: ExerciseView.page,
    ),
    AutoRoute(
      path: '/courses/workout-view',
      page: WorkoutView.page,
    ),
    AutoRoute(
      path: '/courses/first-exercise',
      page: FirstExercise.page,
    ),
    AutoRoute(
      path: '/courses/second-exercise',
      page: SecondExercise.page
    ),
    AutoRoute(
      path: '/courses/congradulations',
      page: CongratulationsRoute.page,
    ),
    AutoRoute(
      path: '/courses/warm-up',
      page: WarmUpRoute.page,
    ),
    AutoRoute(
      path: '/courses/new-password',
      page: NewPasswordRoute.page,
    ),
    AutoRoute(
      path: '/courses/new-password',
      page: NewPasswordRoute.page,
    ),
    AutoRoute(
      path: '/community',
      page: WarmUpRoute.page,
    ),
    AutoRoute(
      path: '/community/complaint',
      page: ComplaintRoute.page,
    ),
    AutoRoute(
      path: '/community/reviews',
      page: ReviewsRoute.page,
    ),
    AutoRoute(
      path: '/community/searsh',
      page: SearchCourseRoute.page,
    ),
    AutoRoute(
      path: '/community/user-course',
      page: UserCourseView.page,
    ),
    AutoRoute(
      path: '/community/write-review',
      page: WriteReviewRoute.page,
    ),
    AutoRoute(
      // path: '/',
      page: NavigationBarRoute.page,
      initial: false,
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
    AutoRoute(
      path: '/home/course-list',
      page: CourseListRoute.page,
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
