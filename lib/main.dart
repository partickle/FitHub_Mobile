import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:fithub/di/configure_dependencies.dart';
import 'package:fithub/di/dependencies.dart';
import 'package:fithub/features/courses/data/repository/providers/course_provider.dart';
import 'package:fithub/features/registration/provider/authorization_screen_provider.dart';
import 'package:fithub/features/registration/provider/new_password_provider.dart';
import 'package:fithub/features/registration/provider/registration_screen_provider.dart';
import 'package:fithub/features/registration/provider/forgot_password_screen_provider.dart';
import 'package:fithub/features/registration/provider/verification_screen_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:fithub/fithub_app.dart';
import 'package:provider/provider.dart';

AppMetricaConfig get _config =>
    const AppMetricaConfig('ed566ab9-d42e-4a3e-b8c9-f3c61f4f1eac', logs: true);

Future<void> main() async {
  AppMetrica.runZoneGuarded(() {
    WidgetsFlutterBinding.ensureInitialized();
    configureDependencies();

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    AppMetrica.activate(_config);
    AppMetrica.reportAppOpen('https://appmetrica.yandex.com');

    runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => CourseProvider(getIt<Dependencies>().courseRepository),
          ),
          ChangeNotifierProvider(
            create: (_) => AuthorizationScreenProvider(getIt<Dependencies>().authRepository)
          ),
          ChangeNotifierProvider(
            create: (_) => RegistrationScreenProvider(getIt<Dependencies>().registrationRepository)
          ),
          ChangeNotifierProvider(
            create: (_) => ForgotPasswordProvider(getIt<Dependencies>().forgotPasswordRepository)
          ),
          ChangeNotifierProvider(
            create: (_) => VerificationProvider(getIt<Dependencies>().verificationRepository)
          ),
          ChangeNotifierProvider(
            create: (_) => NewPasswordProvider(getIt<Dependencies>().newPasswordRepository)
          ),
        ],
        child: const FitHubApp(),
      ),
    );

  });
}
