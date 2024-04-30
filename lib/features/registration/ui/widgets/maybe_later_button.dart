import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:flutter/material.dart';
import 'package:fithub/constants.dart';

class MaybeLaterButton extends StatelessWidget {
  const MaybeLaterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, bottom: 37),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: TextButton(
          style: TextButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            foregroundColor: kSecBackgroundColor,
            elevation: 0
          ),
          onPressed: () {
            AppMetrica.reportEvent('Skip authorization/registration');
            // AutoRouter.of(context).replace(HomeRoute());
          },
          child: Text(
            'Maybe later',
            style: registerMaybeStyle.copyWith(color: kTextColor),
          ),
        ),
      ),
    );
  }
}