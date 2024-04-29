import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fithub/constants.dart';

class VerificationField extends StatelessWidget {
  final List<TextEditingController> controllers;

  const VerificationField({
    super.key,
    required this.controllers
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          for (int i = 0; i < 6; i++) 
            _buildField(context, controllers[i]),
        ],
      ),
    );
  }

  Widget _buildField (BuildContext context, TextEditingController controller) {
    return SizedBox(
      height: 68,
      width: 48,
      child: TextFormField(
        controller: controller,
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
          if (value.isEmpty) {
            FocusScope.of(context).previousFocus();
          }
        },
        decoration: const InputDecoration(
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: kPrimaryColor,
              width: 2
            ),
          ),
        ),
        style: verificationStyle.copyWith(color: kTextColor),
        onSaved: (pin) {},
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly
        ],
      ),
    );
  }
}
