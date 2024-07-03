import 'dart:async';
import 'package:dio/dio.dart';
import 'package:fithub/features/registration/domain/message_response/message_response.dart';
import 'package:fithub/features/registration/domain/code_verification_request/code_verification_request.dart';
import 'package:fithub/features/registration/domain/new_password_request/new_password_request.dart';
import 'package:retrofit/http.dart';
import 'package:fithub/features/registration/domain/send_email_request/send_email_request.dart';


part 'forgot_password_service.g.dart';

@RestApi()
abstract class ForgotPasswordService {
  factory ForgotPasswordService(Dio dio) = _ForgotPasswordService;

  @POST('/auth/send-activation/')
  Future<MessageResponse> sendActivation({
    @Body() required SendEmailRequest request,
  });

  @POST('/auth/reset-password/')
  Future<MessageResponse> resetPassword({
    @Body() required NewPasswordRequest request,
  });

  @POST('/auth/verify/')
  Future<MessageResponse> verifyCode({
    @Body() required CodeVerificationRequest request,
  });

}
