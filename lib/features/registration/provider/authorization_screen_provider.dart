import 'package:auto_route/auto_route.dart';
import 'package:fithub/features/registration/data/repository/auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:fithub/features/registration/domain/user_login_request/user_login_request.dart';
import 'package:fithub/router/app_router.dart';

class AuthorizationScreenProvider extends ChangeNotifier {
  final AuthRepository _authRepository;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  AuthorizationScreenProvider(this._authRepository);

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  Future<void> login(BuildContext context) async {
    if (formKey.currentState?.validate() ?? false) {
      _setLoading(true);
      try {
        final request = UserLoginRequest(
          email: emailController.text,
          password: passwordController.text,
        );

        await _authRepository.login(request: request);
        _setLoading(false);
        AutoRouter.of(context).pushAndPopUntil(const HomeRoute(), predicate: (_) => false);
      } catch (e) {
        _setLoading(false);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Login failed: $e'))
        );
      }
    }
  }

  void _setLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  void navigateToForgotPassword(BuildContext context) {
    AutoRouter.of(context).push(const ForgotPasswordRoute());
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
