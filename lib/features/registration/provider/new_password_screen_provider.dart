import 'package:auto_route/auto_route.dart';
import 'package:fithub/features/registration/data/repository/forgot_password_repository.dart';
import 'package:fithub/features/registration/domain/new_password_request/new_password_request.dart';
import 'package:fithub/router/app_router.dart';
import 'package:flutter/material.dart';

class NewPasswordScreenProvider extends ChangeNotifier {
  final ForgotPasswordRepository _newPasswordRepository;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController newPasswordAgainController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  NewPasswordScreenProvider(this._newPasswordRepository);

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  void _setLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  Future<void> resetPassword(BuildContext context) async {
    if (formKey.currentState?.validate() ?? false) {
      if (newPasswordController.text == newPasswordAgainController.text) {
        _setLoading(true);
        try {
          final request = NewPasswordRequest(
            email: emailController.text,
            newPassword: newPasswordController.text,
          );

          await _newPasswordRepository.resetPassword(request: request);

          _setLoading(false);
          AutoRouter.of(context).pushAndPopUntil(const AuthorizationRoute(), predicate: (_) => false);
        } catch (e) {
          _setLoading(false);
          debugPrint('Password reset failed: $e');
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Password reset failed: $e')),
          );
        }
      }
    }
  }

  @override
  void dispose() {
    emailController.dispose();
    newPasswordController.dispose();
    newPasswordAgainController.dispose();
    super.dispose();
  }
}
