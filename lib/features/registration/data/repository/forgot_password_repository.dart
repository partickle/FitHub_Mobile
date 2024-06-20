import 'package:fithub/features/registration/data/service/forgot_password_service.dart';
import 'package:fithub/features/registration/domain/activation_response.dart';
import 'package:fithub/features/registration/domain/send_email_request.dart';
import 'package:flutter/foundation.dart';

class ForgotPasswordRepository {
  final ForgotPasswordService _forgotPasswordService;

  ForgotPasswordRepository(this._forgotPasswordService);

  Future<ActivationResponse> sendActivationEmail(
      {required SendEmailRequest request}) async {
    try {
      debugPrint('Sending activation email with request: ${request.email}');

      final result = await _forgotPasswordService.sendActivation(
        request: request,
      );
      return result;
    } catch (e, s) {
      debugPrint('Failed to send activation email: $e');
      throw Error.throwWithStackTrace(e, s);
    }
  }
}
