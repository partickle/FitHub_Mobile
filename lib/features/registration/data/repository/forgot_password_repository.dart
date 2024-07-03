import 'package:fithub/features/registration/data/service/forgot_password_service.dart';
import 'package:fithub/features/registration/domain/message_response/message_response.dart';
import 'package:fithub/features/registration/domain/code_verification_request/code_verification_request.dart';
import 'package:fithub/features/registration/domain/new_password_request/new_password_request.dart';
import 'package:fithub/features/registration/domain/send_email_request/send_email_request.dart';
import 'package:flutter/foundation.dart';

class ForgotPasswordRepository {
  final ForgotPasswordService _forgotPasswordService;

  ForgotPasswordRepository(this._forgotPasswordService);

  Future<MessageResponse> sendActivationEmail(
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

  Future<MessageResponse> resetPassword({
    required NewPasswordRequest request,
  }) async {
    try {
      final result = await _forgotPasswordService.resetPassword(
        request: request,
      );
      return result;
    } catch (e, s) {
      throw Error.throwWithStackTrace(e, s);
    }
  }

  Future<MessageResponse> verifyActivationCode(
      {required CodeVerificationRequest request}) async {
    try {
      final result = await _forgotPasswordService.verifyCode(
        request: request,
      );
      return result;
    } catch (e, s) {
      debugPrint('Failed to verify activation code: $e');
      throw Error.throwWithStackTrace(e, s);
    }
  }
}
