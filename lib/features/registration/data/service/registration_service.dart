import 'dart:async';
import 'package:dio/dio.dart';
import 'package:fithub/features/registration/domain/message_response/message_response.dart';
import 'package:retrofit/http.dart';
import 'package:fithub/features/registration/domain/user_registration_request/user_registration_request.dart';

part 'registration_service.g.dart';

@RestApi()
abstract class RegistrationService {
  factory RegistrationService(Dio dio) = _RegistrationService;

  @POST('/auth/register/')
  Future<MessageResponse> registerUser({
    @Body() required UserRegistrationRequest request,
  });

}
