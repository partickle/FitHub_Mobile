import 'package:auto_route/auto_route.dart';
import 'package:fithub/features/registration/data/repository/verification_repository.dart';
import 'package:fithub/features/registration/domain/code_verification_request.dart';
import 'package:fithub/router/app_router.dart';
import 'package:flutter/material.dart';

class VerificationProvider extends ChangeNotifier {
  final VerificationRepository _verificationRepository;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController codeController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  VerificationProvider(this._verificationRepository);

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  void _setLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  Future<void> verifyActivationCode(BuildContext context) async {
    if (formKey.currentState?.validate() ?? false) {
      _setLoading(true);
      try {
        final request = CodeVerificationRequest(
          email: emailController.text,
          code: codeController.text,
        );
        debugPrint('Sending request: ${request.toJson()}');

        await _verificationRepository.verifyActivationCode(request: request);
        _setLoading(false);
        AutoRouter.of(context).pushAndPopUntil(NewPasswordRoute(email: emailController.text), predicate: (_) => false);

        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Complete')),
        );
      } catch (e) {
        _setLoading(false);
        debugPrint('Verification failed: $e');
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Verification failed: $e')),
        );
      }
    }
  }

  @override
  void dispose() {
    emailController.dispose();
    codeController.dispose();
    super.dispose();
  }
}
