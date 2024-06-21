import 'package:dio/dio.dart';
import 'package:fithub/features/courses/data/repository/course_repository.dart';
import 'package:fithub/features/profile/data/repository/profile_repository.dart';
import 'package:fithub/features/registration/data/repository/auth_repository.dart';
import 'package:fithub/features/registration/data/repository/forgot_password_repository.dart';
import 'package:fithub/features/registration/data/repository/registration_repository.dart';
import 'package:fithub/features/registration/data/service/auth_service.dart';
import 'package:fithub/features/registration/data/service/forgot_password_service.dart';
import 'package:fithub/features/registration/data/service/registration_service.dart';
import 'package:fithub/res/constants/constants.dart';
import 'package:fithub/token/interseptor/jwt_interceptor.dart';
import 'package:fithub/token/repository/token_repository.dart';
import 'package:injectable/injectable.dart';

@singleton
class Dependencies {
  final Dio dio = Dio();

  late final AuthService _authService = AuthService(dio);
  late final RegistrationService _registrationService = RegistrationService(dio);
  late final ForgotPasswordService _forgotPasswordService = ForgotPasswordService(dio);

  late final TokenRepository tokenRepository = TokenRepository();
  late final CourseRepository courseRepository = CourseRepository();
  late final ProfileRepository profileRepository = ProfileRepository();
  late final AuthRepository authRepository = AuthRepository(_authService);
  late final RegistrationRepository registrationRepository = RegistrationRepository(_registrationService);
  late final ForgotPasswordRepository forgotPasswordRepository = ForgotPasswordRepository(_forgotPasswordService);

  @postConstruct
  Future<void> init() async {
    dio.options = BaseOptions(
      baseUrl: baseUrl,
      contentType: Headers.jsonContentType,
      receiveTimeout: timeout,
      connectTimeout: timeout,
      sendTimeout: timeout,
    );

    await tokenRepository.initTokens();

    dio.interceptors.add(JWTInterceptor(dio, tokenRepository));
  }
}
