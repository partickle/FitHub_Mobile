import 'package:fithub/features/registration/data/service/verification_service.dart';
import 'package:fithub/features/registration/domain/code_verification_request.dart';
import 'package:fithub/features/registration/domain/code_verification_response.dart';
import 'package:flutter/foundation.dart';

class VerificationRepository {
  final VerificationService _verificationService;

  VerificationRepository(this._verificationService);
  Future<CodeVerificationResponse> verifyActivationCode(
      {required CodeVerificationRequest request}) async {
    try {
      final result = await _verificationService.verifyCode(
        request: request,
      );
      return result;
    } catch (e, s) {
      debugPrint('Failed to verify activation code: $e');
      throw Error.throwWithStackTrace(e, s);
    }
  }
}
