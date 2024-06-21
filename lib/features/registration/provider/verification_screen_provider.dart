import 'package:auto_route/auto_route.dart';
import 'package:fithub/features/registration/data/repository/forgot_password_repository.dart';
import 'package:fithub/features/registration/domain/code_verification_request/code_verification_request.dart';
import 'package:fithub/router/app_router.dart';
import 'package:flutter/material.dart';

class VerificationScreenProvider extends ChangeNotifier {
  final ForgotPasswordRepository _verificationRepository;
  final TextEditingController emailController = TextEditingController();
  final List<TextEditingController> codeControllers = List.generate(6, (_) => TextEditingController());
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  VerificationScreenProvider(this._verificationRepository);

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
          code: codeControllers.map((controller) => controller.text).join()
        );

        await _verificationRepository.verifyActivationCode(request: request);

        _setLoading(false);
        AutoRouter.of(context).pushAndPopUntil(NewPasswordRoute(email: emailController.text), predicate: (_) => false);
      } catch (e) {
        _setLoading(false);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Verification failed: $e')),
        );
      }
    }
  }

  @override
  void dispose() {
    for (var controller in codeControllers) {
      controller.dispose();
    }
    super.dispose();
  }
}
