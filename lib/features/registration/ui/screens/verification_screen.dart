import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fithub/features/registration/provider/verification_screen_provider.dart';
import 'package:fithub/features/registration/ui/widgets/verification_field.dart';
import 'package:fithub/features/registration/ui/components/forgot_password_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

@RoutePage()
class VerificationScreen extends StatefulWidget {
  final String email;

  const VerificationScreen({super.key, required this.email});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  final ScrollController _scrollController = ScrollController();
  final List<TextEditingController> _controllers = List.generate(6, (_) => TextEditingController());

  @override
  void initState() {
    AppMetrica.reportEvent('Open verification screen');
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    for (var controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<VerificationProvider>(context, listen: false);
    provider.emailController.text = widget.email;
    debugPrint('VerificationScreen email: ${widget.email}');

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Form(
        key: provider.formKey,
        child: SingleChildScrollView(
          controller: _scrollController,
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: ForgotPasswordPage(
              title: 'Verification',
              subTitle: 'Check your email. We\'ve sent you the PIN\nat your email.',
              buttonText: 'Verify',
              isSendCode: provider.isLoading,
              onPressed: () {
                debugPrint('Verification code: ${_controllers.map((controller) => controller.text).join()}');
                provider.codeController.text = _controllers.map((controller) => controller.text).join();
                if (provider.formKey.currentState!.validate()) {
                  provider.verifyActivationCode(context);
                }
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: VerificationField(controllers: _controllers),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
