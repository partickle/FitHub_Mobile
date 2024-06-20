import 'dart:async';
import 'package:dio/dio.dart';
import 'package:fithub/features/registration/domain/new_password_request.dart';
import 'package:fithub/features/registration/domain/new_password_response.dart';
import 'package:retrofit/http.dart';

part 'new_password_service.g.dart';

@RestApi()
abstract class NewPasswordService {
  factory NewPasswordService(
    Dio dio
  ) = _NewPasswordService;

  @POST('/auth/reset-password/')
  Future<NewPasswordResponse> resetPassword({
    @Body() required NewPasswordRequest request,
  });
}
