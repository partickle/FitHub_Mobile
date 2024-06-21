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
    AuthorizationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AuthorizationScreen(),
      );
    },
    BreakRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: BreakScreen(),
      );
    },
    CommunityRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CommunityScreen(),
      );
    },
    CommunityTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CommunityTabPage(),
      );
    },
    ComplaintRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ComplaintScreen(),
      );
    },
    CongratulationsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CongratulationsScreen(),
      );
    },
    CourseListRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CourseListScreen(),
      );
    },
    CourseRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CourseScreen(),
      );
    },
    FirstRegistrationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FirstRegistrationScreen(),
      );
    },
    ForgotPasswordRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ForgotPasswordScreen(),
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
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    HomeTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeTabPage(),
      );
    },
    LevelRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LevelScreen(),
      );
    },
    NavigationBarRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const NavigationBarPage(),
      );
    },
    NewPasswordRoute.name: (routeData) {
      final args = routeData.argsAs<NewPasswordRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: NewPasswordScreen(
          key: args.key,
          email: args.email,
        ),
      );
    },
    ProfileRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfileScreen(),
      );
    },
    ProfileTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfileTabPage(),
      );
    },
    ProgressRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProgressScreen(),
      );
    },
    ProgressTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProgressTabPage(),
      );
    },
    ReviewsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ReviewsScreen(),
      );
    },
    SearchCourseRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SearchCourseScreen(),
      );
    },
    SecondRegistrationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SecondRegistrationScreen(),
      );
    },
    VerificationRoute.name: (routeData) {
      final args = routeData.argsAs<VerificationRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: VerificationScreen(
          key: args.key,
          email: args.email,
        ),
      );
    },
    WarmUpRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WarmUpScreen(),
      );
    },
    WelcomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const WelcomeScreen(),
      );
    },
    WriteReviewRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WriteReviewScreen(),
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
/// [AuthorizationScreen]
class AuthorizationRoute extends PageRouteInfo<void> {
  const AuthorizationRoute({List<PageRouteInfo>? children})
      : super(
          AuthorizationRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthorizationRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [BreakScreen]
class BreakRoute extends PageRouteInfo<void> {
  const BreakRoute({List<PageRouteInfo>? children})
      : super(
          BreakRoute.name,
          initialChildren: children,
        );

  static const String name = 'BreakRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CommunityScreen]
class CommunityRoute extends PageRouteInfo<void> {
  const CommunityRoute({List<PageRouteInfo>? children})
      : super(
          CommunityRoute.name,
          initialChildren: children,
        );

  static const String name = 'CommunityRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CommunityTabPage]
class CommunityTab extends PageRouteInfo<void> {
  const CommunityTab({List<PageRouteInfo>? children})
      : super(
          CommunityTab.name,
          initialChildren: children,
        );

  static const String name = 'CommunityTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ComplaintScreen]
class ComplaintRoute extends PageRouteInfo<void> {
  const ComplaintRoute({List<PageRouteInfo>? children})
      : super(
          ComplaintRoute.name,
          initialChildren: children,
        );

  static const String name = 'ComplaintRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CongratulationsScreen]
class CongratulationsRoute extends PageRouteInfo<void> {
  const CongratulationsRoute({List<PageRouteInfo>? children})
      : super(
          CongratulationsRoute.name,
          initialChildren: children,
        );

  static const String name = 'CongratulationsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CourseListScreen]
class CourseListRoute extends PageRouteInfo<void> {
  const CourseListRoute({List<PageRouteInfo>? children})
      : super(
          CourseListRoute.name,
          initialChildren: children,
        );

  static const String name = 'CourseListRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CourseScreen]
class CourseRoute extends PageRouteInfo<void> {
  const CourseRoute({List<PageRouteInfo>? children})
      : super(
          CourseRoute.name,
          initialChildren: children,
        );

  static const String name = 'CourseRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ExerciseView]
class ExerciseView extends PageRouteInfo<void> {
  const ExerciseView({List<PageRouteInfo>? children})
      : super(
          ExerciseView.name,
          initialChildren: children,
        );

  static const String name = 'ExerciseView';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [FirstExercise]
class FirstExercise extends PageRouteInfo<void> {
  const FirstExercise({List<PageRouteInfo>? children})
      : super(
          FirstExercise.name,
          initialChildren: children,
        );

  static const String name = 'FirstExercise';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [FirstRegistrationScreen]
class FirstRegistrationRoute extends PageRouteInfo<void> {
  const FirstRegistrationRoute({List<PageRouteInfo>? children})
      : super(
          FirstRegistrationRoute.name,
          initialChildren: children,
        );

  static const String name = 'FirstRegistrationRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ForgotPasswordScreen]
class ForgotPasswordRoute extends PageRouteInfo<void> {
  const ForgotPasswordRoute({List<PageRouteInfo>? children})
      : super(
          ForgotPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ForgotPasswordRoute';

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
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeTabPage]
class HomeTab extends PageRouteInfo<void> {
  const HomeTab({List<PageRouteInfo>? children})
      : super(
          HomeTab.name,
          initialChildren: children,
        );

  static const String name = 'HomeTab';

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
/// [NavigationBarPage]
class NavigationBarRoute extends PageRouteInfo<void> {
  const NavigationBarRoute({List<PageRouteInfo>? children})
      : super(
          NavigationBarRoute.name,
          initialChildren: children,
        );

  static const String name = 'NavigationBarRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [NewPasswordScreen]
class NewPasswordRoute extends PageRouteInfo<NewPasswordRouteArgs> {
  NewPasswordRoute({
    Key? key,
    required String email,
    List<PageRouteInfo>? children,
  }) : super(
          NewPasswordRoute.name,
          args: NewPasswordRouteArgs(
            key: key,
            email: email,
          ),
          initialChildren: children,
        );

  static const String name = 'NewPasswordRoute';

  static const PageInfo<NewPasswordRouteArgs> page =
      PageInfo<NewPasswordRouteArgs>(name);
}

class NewPasswordRouteArgs {
  const NewPasswordRouteArgs({
    this.key,
    required this.email,
  });

  final Key? key;

  final String email;

  @override
  String toString() {
    return 'NewPasswordRouteArgs{key: $key, email: $email}';
  }
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

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProfileTabPage]
class ProfileTab extends PageRouteInfo<void> {
  const ProfileTab({List<PageRouteInfo>? children})
      : super(
          ProfileTab.name,
          initialChildren: children,
        );

  static const String name = 'ProfileTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProgressScreen]
class ProgressRoute extends PageRouteInfo<void> {
  const ProgressRoute({List<PageRouteInfo>? children})
      : super(
          ProgressRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProgressRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProgressTabPage]
class ProgressTab extends PageRouteInfo<void> {
  const ProgressTab({List<PageRouteInfo>? children})
      : super(
          ProgressTab.name,
          initialChildren: children,
        );

  static const String name = 'ProgressTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ReviewsScreen]
class ReviewsRoute extends PageRouteInfo<void> {
  const ReviewsRoute({List<PageRouteInfo>? children})
      : super(
          ReviewsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ReviewsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SearchCourseScreen]
class SearchCourseRoute extends PageRouteInfo<void> {
  const SearchCourseRoute({List<PageRouteInfo>? children})
      : super(
          SearchCourseRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchCourseRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SecondExercise]
class SecondExercise extends PageRouteInfo<void> {
  const SecondExercise({List<PageRouteInfo>? children})
      : super(
          SecondExercise.name,
          initialChildren: children,
        );

  static const String name = 'SecondExercise';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SecondRegistrationScreen]
class SecondRegistrationRoute extends PageRouteInfo<void> {
  const SecondRegistrationRoute({List<PageRouteInfo>? children})
      : super(
          SecondRegistrationRoute.name,
          initialChildren: children,
        );

  static const String name = 'SecondRegistrationRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [UserCourseView]
class UserCourseView extends PageRouteInfo<void> {
  const UserCourseView({List<PageRouteInfo>? children})
      : super(
          UserCourseView.name,
          initialChildren: children,
        );

  static const String name = 'UserCourseView';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [VerificationScreen]
class VerificationRoute extends PageRouteInfo<VerificationRouteArgs> {
  VerificationRoute({
    Key? key,
    required String email,
    List<PageRouteInfo>? children,
  }) : super(
          VerificationRoute.name,
          args: VerificationRouteArgs(
            key: key,
            email: email,
          ),
          initialChildren: children,
        );

  static const String name = 'VerificationRoute';

  static const PageInfo<VerificationRouteArgs> page =
      PageInfo<VerificationRouteArgs>(name);
}

class VerificationRouteArgs {
  const VerificationRouteArgs({
    this.key,
    required this.email,
  });

  final Key? key;

  final String email;

  @override
  String toString() {
    return 'VerificationRouteArgs{key: $key, email: $email}';
  }
}

/// generated route for
/// [WarmUpScreen]
class WarmUpRoute extends PageRouteInfo<void> {
  const WarmUpRoute({List<PageRouteInfo>? children})
      : super(
          WarmUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'WarmUpRoute';

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

/// generated route for
/// [WorkoutView]
class WorkoutView extends PageRouteInfo<void> {
  const WorkoutView({List<PageRouteInfo>? children})
      : super(
          WorkoutView.name,
          initialChildren: children,
        );

  static const String name = 'WorkoutView';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [WriteReviewScreen]
class WriteReviewRoute extends PageRouteInfo<void> {
  const WriteReviewRoute({List<PageRouteInfo>? children})
      : super(
          WriteReviewRoute.name,
          initialChildren: children,
        );

  static const String name = 'WriteReviewRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
