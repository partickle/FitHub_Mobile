import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fithub/router/app_router.dart';
import 'package:fithub/features/registration/ui/widgets/verification_field.dart';
import 'package:fithub/features/registration/ui/components/forgot_password_page.dart';
import 'package:flutter/material.dart';

@RoutePage()
class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  final _formKey = GlobalKey<FormState>();

  final ScrollController _scrollController = ScrollController();
  final List<TextEditingController> _controllers = List.generate(6, (_) => TextEditingController());

  late bool isSendCode = false;

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
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          controller: _scrollController,
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: ForgotPasswordPage(
              title: 'Verification',
              subTitle: 'Check your email. We\'ve sent you the PIN\nat your email.',
              buttonText: 'Verify',
              isSendCode: isSendCode,
              onPressed: () {
                String fullCode = _controllers.map((controller) => controller.text).join();

                final router = AutoRouter.of(context).stack;
                final name = router[router.length - 2].name;

                if (int.tryParse(fullCode) == 111111) {

                  if (name == 'ForgotPasswordRoute') {
                    AppMetrica.reportEvent('Verification for password complete');
                    AutoRouter.of(context).push(const NewPasswordRoute());
                  } else {
                    AppMetrica.reportEvent('Verification for registration complete');
                    AutoRouter.of(context).replace(const SecondRegistrationRoute());
                  }
                  
                  setState(() {
                    isSendCode = false;
                  });
                } else {
                  setState(() {
                    isSendCode = true;
                  });
                }
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: VerificationField(controllers: _controllers),
              )
            ),
          ),
        )
      )
    );
  }
}