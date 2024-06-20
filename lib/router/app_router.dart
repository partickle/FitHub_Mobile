import 'package:auto_route/auto_route.dart';
import 'package:fithub/features/courses/ui/screens/break_screen.dart';
import 'package:fithub/features/courses/ui/screens/congratulations_screen.dart';
import 'package:fithub/features/courses/ui/screens/course_view.dart';
import 'package:fithub/features/courses/ui/screens/exercise_first.dart';
import 'package:fithub/features/courses/ui/screens/exercise_second.dart';
import 'package:fithub/features/courses/ui/screens/exercise_view.dart';
import 'package:fithub/features/courses/ui/screens/warm_up_screen.dart';
import 'package:fithub/features/onboarding/ui/screens/age_screen.dart';
import 'package:fithub/features/onboarding/ui/screens/gender_screen.dart';
import 'package:fithub/features/onboarding/ui/screens/goal_screen.dart';
import 'package:fithub/features/onboarding/ui/screens/level_screen.dart';
import 'package:fithub/features/onboarding/ui/screens/welcome_screen.dart';
import 'package:fithub/features/registration/ui/screens/authorization_screen.dart';
import 'package:fithub/features/registration/ui/screens/first_registration_screen.dart';
import 'package:fithub/features/registration/ui/screens/forgot_password_screen.dart';
import 'package:fithub/features/registration/ui/screens/new_password_screen.dart';
import 'package:fithub/features/registration/ui/screens/second_registration_screen.dart';
import 'package:fithub/features/registration/ui/screens/verification_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      path: '/onboarding',
      page: WelcomeRoute.page,
      //initial: true,
    ),
    AutoRoute(
      path: '/onboarding/gender',
      page: GenderRoute.page
    ),
    AutoRoute(
      path: '/onboarding/age',
      page: AgeRoute.page
    ),
    AutoRoute(
      path: '/onboarding/goal',
      page: GoalRoute.page
    ),
    AutoRoute(
      path: '/onboarding/level',
      page: LevelRoute.page
    ),
    AutoRoute(
      path: '/registration/authorization',
      page: AuthorizationRoute.page
    ),
    AutoRoute(
      path: '/registration/first-registration',
      page: FirstRegistrationRoute.page
    ),
    AutoRoute(
      path: '/registration/second-registration',
      page: SecondRegistrationRoute.page
    ),
    AutoRoute(
      path: '/registration/forgot-password',
      page: ForgotPasswordRoute.page
    ),
    AutoRoute(
      path: '/registration/verification',
      page: VerificationRoute.page
    ),
    AutoRoute(
      path: '/registration/new-password',
      page: NewPasswordRoute.page
    ),
    AutoRoute(
      path: '/course/warm-up',
      page: WorkoutViewRoute.page,
      //initial: true
    ),
     AutoRoute(
      path: '/course/break-screen',
      page: BreakScreenRoute.page,
      //initial: true
    ),
     AutoRoute(
      path: '/course/first-exercise',
      page: FirstExerciseRoute.page,
      //initial: true
    ),
    AutoRoute(
      path: '/course/second-exercise',
      page: SecondExerciseRoute.page,
      //initial: true
    ),
    AutoRoute(
      path: '/course/exercise-view',
      page: ExerciseViewRoute.page,
      //initial: true
    ),
    AutoRoute(
      path: '/course/congratulations-screen',
      page: CongratulationsRoute.page,
      //initial: true
    ),
    AutoRoute(
      path: '/course/course-view',
      page: CourseViewRoute.page,
      initial: true
    ),
  ];
}