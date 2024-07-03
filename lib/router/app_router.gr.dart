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
      final args = routeData.argsAs<BreakRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: BreakScreen(
          key: args.key,
          workoutId: args.workoutId,
          curExercise: args.curExercise,
        ),
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
    CongradulationRoute.name: (routeData) {
      final args = routeData.argsAs<CongradulationRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CongradulationScreen(
          key: args.key,
          workoutId: args.workoutId,
        ),
      );
    },
    CourseListRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CourseListScreen(),
      );
    },
    CourseRoute.name: (routeData) {
      final args = routeData.argsAs<CourseRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CourseScreen(
          key: args.key,
          courseId: args.courseId,
        ),
      );
    },
    ExerciseInfoRoute.name: (routeData) {
      final args = routeData.argsAs<ExerciseInfoRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ExerciseInfoScreen(
          key: args.key,
          workoutId: args.workoutId,
          exerciseId: args.exerciseId,
        ),
      );
    },
    ExerciseRoute.name: (routeData) {
      final args = routeData.argsAs<ExerciseRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ExerciseScreen(
          key: args.key,
          workoutId: args.workoutId,
          curExercise: args.curExercise,
        ),
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
        child: ProgressScreen(),
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
    WelcomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const WelcomeScreen(),
      );
    },
    WorkoutRoute.name: (routeData) {
      final args = routeData.argsAs<WorkoutRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WorkoutScreen(
          key: args.key,
          courseId: args.courseId,
          workoutId: args.workoutId,
        ),
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
class BreakRoute extends PageRouteInfo<BreakRouteArgs> {
  BreakRoute({
    Key? key,
    required int workoutId,
    required int curExercise,
    List<PageRouteInfo>? children,
  }) : super(
          BreakRoute.name,
          args: BreakRouteArgs(
            key: key,
            workoutId: workoutId,
            curExercise: curExercise,
          ),
          initialChildren: children,
        );

  static const String name = 'BreakRoute';

  static const PageInfo<BreakRouteArgs> page = PageInfo<BreakRouteArgs>(name);
}

class BreakRouteArgs {
  const BreakRouteArgs({
    this.key,
    required this.workoutId,
    required this.curExercise,
  });

  final Key? key;

  final int workoutId;

  final int curExercise;

  @override
  String toString() {
    return 'BreakRouteArgs{key: $key, workoutId: $workoutId, curExercise: $curExercise}';
  }
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
/// [CongradulationScreen]
class CongradulationRoute extends PageRouteInfo<CongradulationRouteArgs> {
  CongradulationRoute({
    Key? key,
    required int workoutId,
    List<PageRouteInfo>? children,
  }) : super(
          CongradulationRoute.name,
          args: CongradulationRouteArgs(
            key: key,
            workoutId: workoutId,
          ),
          initialChildren: children,
        );

  static const String name = 'CongradulationRoute';

  static const PageInfo<CongradulationRouteArgs> page =
      PageInfo<CongradulationRouteArgs>(name);
}

class CongradulationRouteArgs {
  const CongradulationRouteArgs({
    this.key,
    required this.workoutId,
  });

  final Key? key;

  final int workoutId;

  @override
  String toString() {
    return 'CongradulationRouteArgs{key: $key, workoutId: $workoutId}';
  }
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
class CourseRoute extends PageRouteInfo<CourseRouteArgs> {
  CourseRoute({
    Key? key,
    required int courseId,
    List<PageRouteInfo>? children,
  }) : super(
          CourseRoute.name,
          args: CourseRouteArgs(
            key: key,
            courseId: courseId,
          ),
          initialChildren: children,
        );

  static const String name = 'CourseRoute';

  static const PageInfo<CourseRouteArgs> page = PageInfo<CourseRouteArgs>(name);
}

class CourseRouteArgs {
  const CourseRouteArgs({
    this.key,
    required this.courseId,
  });

  final Key? key;

  final int courseId;

  @override
  String toString() {
    return 'CourseRouteArgs{key: $key, courseId: $courseId}';
  }
}

/// generated route for
/// [ExerciseInfoScreen]
class ExerciseInfoRoute extends PageRouteInfo<ExerciseInfoRouteArgs> {
  ExerciseInfoRoute({
    Key? key,
    required int workoutId,
    required int exerciseId,
    List<PageRouteInfo>? children,
  }) : super(
          ExerciseInfoRoute.name,
          args: ExerciseInfoRouteArgs(
            key: key,
            workoutId: workoutId,
            exerciseId: exerciseId,
          ),
          initialChildren: children,
        );

  static const String name = 'ExerciseInfoRoute';

  static const PageInfo<ExerciseInfoRouteArgs> page =
      PageInfo<ExerciseInfoRouteArgs>(name);
}

class ExerciseInfoRouteArgs {
  const ExerciseInfoRouteArgs({
    this.key,
    required this.workoutId,
    required this.exerciseId,
  });

  final Key? key;

  final int workoutId;

  final int exerciseId;

  @override
  String toString() {
    return 'ExerciseInfoRouteArgs{key: $key, workoutId: $workoutId, exerciseId: $exerciseId}';
  }
}

/// generated route for
/// [ExerciseScreen]
class ExerciseRoute extends PageRouteInfo<ExerciseRouteArgs> {
  ExerciseRoute({
    Key? key,
    required int workoutId,
    required int curExercise,
    List<PageRouteInfo>? children,
  }) : super(
          ExerciseRoute.name,
          args: ExerciseRouteArgs(
            key: key,
            workoutId: workoutId,
            curExercise: curExercise,
          ),
          initialChildren: children,
        );

  static const String name = 'ExerciseRoute';

  static const PageInfo<ExerciseRouteArgs> page =
      PageInfo<ExerciseRouteArgs>(name);
}

class ExerciseRouteArgs {
  const ExerciseRouteArgs({
    this.key,
    required this.workoutId,
    required this.curExercise,
  });

  final Key? key;

  final int workoutId;

  final int curExercise;

  @override
  String toString() {
    return 'ExerciseRouteArgs{key: $key, workoutId: $workoutId, curExercise: $curExercise}';
  }
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
/// [WorkoutScreen]
class WorkoutRoute extends PageRouteInfo<WorkoutRouteArgs> {
  WorkoutRoute({
    Key? key,
    required int courseId,
    required int workoutId,
    List<PageRouteInfo>? children,
  }) : super(
          WorkoutRoute.name,
          args: WorkoutRouteArgs(
            key: key,
            courseId: courseId,
            workoutId: workoutId,
          ),
          initialChildren: children,
        );

  static const String name = 'WorkoutRoute';

  static const PageInfo<WorkoutRouteArgs> page =
      PageInfo<WorkoutRouteArgs>(name);
}

class WorkoutRouteArgs {
  const WorkoutRouteArgs({
    this.key,
    required this.courseId,
    required this.workoutId,
  });

  final Key? key;

  final int courseId;

  final int workoutId;

  @override
  String toString() {
    return 'WorkoutRouteArgs{key: $key, courseId: $courseId, workoutId: $workoutId}';
  }
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
