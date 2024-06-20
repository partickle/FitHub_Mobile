import 'package:fithub/features/registration/data/service/registration_service.dart';
import 'package:fithub/features/registration/domain/user_registration_request.dart';
import 'package:fithub/token/domain/jwt_response.dart';

class RegistrationRepository {
  final RegistrationService _registrationService;
  
  RegistrationRepository(this._registrationService);

  Future<JwtResponse> register({
    required UserRegistrationRequest request,
  }) async {
    try {
      final result = await _registrationService.registerUser(request: request);
      return result;
    } catch (e, s) {
      throw Error.throwWithStackTrace(e, s);
    }
  }
}
