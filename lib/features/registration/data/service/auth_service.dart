import 'dart:async';
import 'package:fithub/features/registration/domain/user_login_request.dart';
import 'package:fithub/token/domain/jwt_response.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';

part 'auth_service.g.dart';

@injectable
@RestApi()
abstract class AuthService {
  @factoryMethod
  factory AuthService(
    Dio dio
  ) = _AuthService;

  @POST('/auth/login/')
  Future<JwtResponse> loginUser({
    @Body() required UserLoginRequest request,
  });
}
