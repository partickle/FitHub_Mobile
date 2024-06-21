import 'dart:async';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:fithub/features/registration/domain/user_registration_request/user_registration_request.dart';

import 'package:fithub/token/domain/jwt_response.dart';

part 'registration_service.g.dart';

@RestApi()
abstract class RegistrationService {
  factory RegistrationService(Dio dio) = _RegistrationService;

  @POST('/auth/register/')
  Future<JwtResponse> registerUser({
    @Body() required UserRegistrationRequest request,
  });

}
