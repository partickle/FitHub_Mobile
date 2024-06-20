import 'package:fithub/features/registration/domain/send_email_request.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:fithub/features/registration/data/repository/forgot_password_repository.dart';

class ForgotPasswordProvider extends ChangeNotifier {
  final ForgotPasswordRepository _verificationRepository;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController codeController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  ForgotPasswordProvider(this._verificationRepository) {
    _loadEmail();
  }

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  void _setLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  Future<void> _loadEmail() async {
    final preferences = await SharedPreferences.getInstance();
    emailController.text = preferences.getString('email') ?? '';
    debugPrint('Loaded email from SharedPreferences: ${emailController.text}');
  }

  Future<void> sendActivationEmail(BuildContext context) async {
    if (formKey.currentState?.validate() ?? false) {
      _setLoading(true);
      try {
        final request = SendEmailRequest(
          email: emailController.text,
        );
        await _verificationRepository.sendActivationEmail(request: request);
        _setLoading(false);
        debugPrint('Activation email sent successfully');
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Activation email sent')));
      } catch (e) {
        _setLoading(false);
        debugPrint('Failed to send activation email: $e');
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
