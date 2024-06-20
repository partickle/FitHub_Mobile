import 'package:fithub/features/registration/data/service/auth_service.dart';
import 'package:fithub/features/registration/domain/user_login_request.dart';
import 'package:fithub/token/domain/jwt_response.dart';

class AuthRepository {
  final AuthService _authService;
  
  AuthRepository(
    this._authService,
  );

  Future<JwtResponse> login({
    required UserLoginRequest request,
  }) async {
    try {
      final result = await _authService.loginUser(
        request: request,
      );
      return result;
    } catch (e, s) {
      throw Error.throwWithStackTrace(e, s);
    }
  }
}
