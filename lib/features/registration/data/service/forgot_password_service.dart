import 'dart:async';
import 'package:dio/dio.dart';
import 'package:fithub/features/registration/domain/activation_response/activation_response.dart';
import 'package:fithub/features/registration/domain/code_verification_request/code_verification_request.dart';
import 'package:fithub/features/registration/domain/code_verification_response/code_verification_response.dart';
import 'package:fithub/features/registration/domain/new_password_request/new_password_request.dart';
import 'package:fithub/features/registration/domain/new_password_response/new_password_response.dart';
import 'package:retrofit/http.dart';
import 'package:fithub/features/registration/domain/send_email_request/send_email_request.dart';


part 'forgot_password_service.g.dart';

@RestApi()
abstract class ForgotPasswordService {
  factory ForgotPasswordService(Dio dio) = _ForgotPasswordService;

  @POST('/auth/send-activation/')
  Future<ActivationResponse> sendActivation({
    @Body() required SendEmailRequest request,
  });

  @POST('/auth/reset-password/')
  Future<NewPasswordResponse> resetPassword({
    @Body() required NewPasswordRequest request,
  });

  @POST('/auth/verify/')
  Future<CodeVerificationResponse> verifyCode({
    @Body() required CodeVerificationRequest request,
  });

}
