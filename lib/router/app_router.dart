import 'package:auto_route/auto_route.dart';
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
import 'package:fithub/features/settings/ui/screens/be_premium.dart';
import 'package:fithub/features/settings/ui/screens/contact_screen.dart';
import 'package:fithub/features/settings/ui/screens/edit_profile.dart';
import 'package:fithub/features/settings/ui/screens/language_screen.dart';
import 'package:fithub/features/settings/ui/screens/notifications_screen.dart';
import 'package:fithub/features/settings/ui/screens/privacy_screen.dart';
import 'package:fithub/features/settings/ui/screens/profile_pro_screen.dart';
import 'package:fithub/features/settings/ui/screens/profile_screen.dart';
import 'package:fithub/features/settings/ui/screens/settings_screen.dart';
import 'package:flutter/material.dart';

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
      path: '/settings/profile',
      page: ProfileRoute.page,
      initial: true,
    ),
     AutoRoute(
      path: '/settings/pro-profile',
      page: ProProfileRoute.page
    ),
     AutoRoute(
      path: '/settings/settings-screen',
      page: SettingsRoute.page
    ),
     AutoRoute(
      path: '/settings/be-premium',
      page: PremiumRoute.page
    ),
    AutoRoute(
      path: '/settings/edit-profile',
      page: EditProfileRoute.page
    ),
     AutoRoute(
      path: '/settings/privacy-screen',
      page: PrivacyRoute.page
    ),
    AutoRoute(
      path: '/settings/notification-screen',
      page: NotificationRoute.page
    ),
    AutoRoute(
      path: '/settings/language-screen',
      page: LanguageRoute.page
    ),
    AutoRoute(
      path: '/settings/contact-us',
      page: ContactUsRoute.page
    ),
  ];
}