import 'package:flutter/material.dart';
import 'package:fithub/features/registration/data/repository/registration_repository.dart';
import 'package:fithub/features/registration/domain/user_registration_request.dart';
import 'package:fithub/router/app_router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fithub/features/onboarding/service/preferences_service.dart';

class RegistrationScreenProvider extends ChangeNotifier {
  final RegistrationRepository _registrationRepository;
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController userTagController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  RegistrationScreenProvider(this._registrationRepository);

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  Future<void> register(BuildContext context) async {
    if (formKey.currentState?.validate() ?? false) {
      _setLoading(true);
      try {
        // Получение данных из Shared Preferences
        var prefsData = await PreferencesService().getUserProfile();
        var regData = await PreferencesService().getRegistrationData();

        final request = UserRegistrationRequest(
          email: regData['email'],
          password: regData['password'],
          first_name: firstNameController.text,
          last_name: lastNameController.text,
          username: userTagController.text,
          profile: Profile(
            is_male: prefsData['is_male'],
            age: prefsData['age'],
            goal: prefsData['goal'],
            physical_activity_level: prefsData['physical_activity_level'],
          ),
        );

        debugPrint('Sending registration request: ${request.toJson()}');

        await _registrationRepository.register(request: request);
        _setLoading(false);
        AutoRouter.of(context).pushAndPopUntil(const AuthorizationRoute(), predicate: (_) => false);
      } catch (e) {
        _setLoading(false);
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('Registration failed: $e')));
      }
    }
  }

  void _setLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    userTagController.dispose();
    super.dispose();
  }
}
