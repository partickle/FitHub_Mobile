import 'dart:async';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:fithub/features/registration/domain/code_verification_response.dart';
import 'package:fithub/features/registration/domain/code_verification_request.dart';

part 'verification_service.g.dart';

@RestApi()
abstract class VerificationService {
  factory VerificationService(Dio dio) = _VerificationService;

  @POST('/auth/verify/')
  Future<CodeVerificationResponse> verifyCode({
    @Body() required CodeVerificationRequest request,
  });
}
