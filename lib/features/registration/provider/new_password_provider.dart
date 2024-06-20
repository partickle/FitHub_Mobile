import 'package:auto_route/auto_route.dart';
import 'package:fithub/features/registration/data/repository/new_password_repository.dart';
import 'package:fithub/features/registration/domain/new_password_request.dart';
import 'package:fithub/router/app_router.dart';
import 'package:flutter/material.dart';

class NewPasswordProvider extends ChangeNotifier {
  final NewPasswordRepository _newPasswordRepository;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController newPasswordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  NewPasswordProvider(this._newPasswordRepository);

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  void _setLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  Future<void> resetPassword(BuildContext context) async {
    if (formKey.currentState?.validate() ?? false) {
      _setLoading(true);
      try {
        final request = NewPasswordRequest(
          email: emailController.text,
          new_password: newPasswordController.text,
        );
        debugPrint('Sending request: ${request.toJson()}');

        await _newPasswordRepository.resetPassword(request: request);
        _setLoading(false);
        AutoRouter.of(context).pushAndPopUntil(const AuthorizationRoute(), predicate: (_) => false);

        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Password reset complete')),
        );
      } catch (e) {
        _setLoading(false);
        debugPrint('Password reset failed: $e');
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Password reset failed: $e')),
        );
      }
    }
  }

  @override
  void dispose() {
    emailController.dispose();
    newPasswordController.dispose();
    super.dispose();
  }
}
