import 'package:fithub/features/registration/data/service/registration_service.dart';
import 'package:fithub/features/registration/domain/message_response/message_response.dart';
import 'package:fithub/features/registration/domain/user_registration_request/user_registration_request.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegistrationRepository {
  final RegistrationService _registrationService;
  final FlutterSecureStorage _secureStorage = const FlutterSecureStorage();
  
  RegistrationRepository(this._registrationService);

  Future<MessageResponse> register({
    required UserRegistrationRequest request,
  }) async {
    try {
      final result = await _registrationService.registerUser(request: request);
      return result;
    } catch (e, s) {
      throw Error.throwWithStackTrace(e, s);
    }
  }

  Future<void> setFirstPartRegistrationData(String email, String password) async {
    await _secureStorage.write(key: 'email', value: email);
    await _secureStorage.write(key: 'password', value: password);
  }

  Future<Map<String, String>> getFirstPartRegistrationData() async {
    String? email = await _secureStorage.read(key: 'email');
    String? password = await _secureStorage.read(key: 'password');
    return {
      'email': email ?? '',
      'password': password ?? ''
    };
  }

  Future<void> clearFirstPartRegistrationData() async {
    await _secureStorage.delete(key: 'email');
    await _secureStorage.delete(key: 'password');
  }

  Future<String> getEmail() async {
    final preferences = await SharedPreferences.getInstance();
    return preferences.getString('email') ?? '';
  }
}
