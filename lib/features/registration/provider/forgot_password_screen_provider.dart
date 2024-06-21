import 'package:auto_route/auto_route.dart';
import 'package:fithub/features/registration/domain/send_email_request/send_email_request.dart';
import 'package:fithub/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:fithub/features/registration/data/repository/forgot_password_repository.dart';

class ForgotPasswordScreenProvider extends ChangeNotifier {
  final ForgotPasswordRepository _verificationRepository;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController codeController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  ForgotPasswordScreenProvider(this._verificationRepository);

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  void _setLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  Future<void> sendActivationCode(BuildContext context) async {
    if (formKey.currentState?.validate() ?? false) {
      _setLoading(true);
      try {
        final request = SendEmailRequest(
          email: emailController.text,
        );
        
        await _verificationRepository.sendActivationEmail(request: request);

        _setLoading(false);
        AutoRouter.of(context).push(VerificationRoute(email: emailController.text));
      } catch (e) {
        _setLoading(false);
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Failed to send activation email: $e')));
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
