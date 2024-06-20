import 'package:dio/dio.dart';
import 'package:fithub/features/courses/data/repository/course_repository.dart';
import 'package:fithub/features/registration/data/repository/auth_repository.dart';
import 'package:fithub/features/registration/data/repository/forgot_password_repository.dart';
import 'package:fithub/features/registration/data/repository/new_password_repository.dart';
import 'package:fithub/features/registration/data/repository/registration_repository.dart';
import 'package:fithub/features/registration/data/repository/verification_repository.dart';
import 'package:fithub/features/registration/data/service/auth_service.dart';
import 'package:fithub/features/registration/data/service/forgot_password_service.dart';
import 'package:fithub/features/registration/data/service/new_password_service.dart';
import 'package:fithub/features/registration/data/service/registration_service.dart';
import 'package:fithub/features/registration/data/service/verification_service.dart';
import 'package:fithub/res/constants/constants.dart';
import 'package:fithub/token/interseptor/jwt_interceptor.dart';
import 'package:fithub/token/repository/token_repository.dart';
import 'package:injectable/injectable.dart';

@singleton
class Dependencies {
  final Dio dio = Dio();

  late final AuthService _authService = AuthService(dio);
  late final RegistrationService _registrationService =
      RegistrationService(dio);
  late final ForgotPasswordService _forgotPasswordService = ForgotPasswordService(dio);
  late final VerificationService _verificationService = VerificationService(dio);
  late final NewPasswordService _newPasswordService = NewPasswordService(dio);

  late final TokenRepository tokenRepository = TokenRepository();
  late final CourseRepository courseRepository = CourseRepository();
  late final AuthRepository authRepository = AuthRepository(_authService);
  late final RegistrationRepository registrationRepository =
      RegistrationRepository(_registrationService);
  late final ForgotPasswordRepository forgotPasswordRepository = ForgotPasswordRepository(_forgotPasswordService);
  late final VerificationRepository verificationRepository = VerificationRepository(_verificationService);
  late final NewPasswordRepository newPasswordRepository = NewPasswordRepository(_newPasswordService);

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
