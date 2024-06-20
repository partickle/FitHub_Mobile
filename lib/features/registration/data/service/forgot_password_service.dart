import 'dart:async';
import 'package:dio/dio.dart';
import 'package:fithub/features/registration/domain/activation_response.dart';
import 'package:retrofit/http.dart';
import 'package:fithub/features/registration/domain/send_email_request.dart';


part 'forgot_password_service.g.dart';

@RestApi()
abstract class ForgotPasswordService {
  factory ForgotPasswordService(Dio dio) = _ForgotPasswordService;

  @POST('/auth/send-activation/')
  Future<ActivationResponse> sendActivation({
    @Body() required SendEmailRequest request,
  });

}
