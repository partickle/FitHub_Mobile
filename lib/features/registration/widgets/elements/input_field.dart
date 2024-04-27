import 'package:fithub/constants.dart';
import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  final String labelText;
  final bool isObscure;
  final bool isEmail;
  final bool isPassword;
  final bool isTag;
  final TextEditingController controller;

  const InputField({
    super.key,
    required this.labelText,
    required this.isObscure,
    required this.isEmail,
    required this.isPassword,
    required this.isTag,
    required this.controller,
  });

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  late bool _passwordVisible;
  late String? _errorText;

  @override
  void initState() {
    super.initState();
    _passwordVisible = !widget.isObscure;
    _errorText = null;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40, right: 40, bottom: 5),
      child: TextFormField(
        controller: widget.controller,
        obscureText: !_passwordVisible,
        style: registerInputStyle,
        decoration: InputDecoration(
          labelText: widget.labelText,
          errorText: _errorText,
          floatingLabelStyle: registerInputStyle.copyWith(color: kPrimaryColor),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: kThirdBackgroundColor),
          ),
          suffixIcon: (widget.isObscure) ? _buildSuffixIcon() : null,
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return ('Please Enter Your ${widget.labelText}');
          }
          if (widget.isEmail && !RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
              .hasMatch(value)) {
            return ("Please Enter a valid email");
          }
          if (widget.isPassword && !RegExp(r'^.{6,}$').hasMatch(value)) {
            return ("Enter Valid Password(Min. 6 Character)");
          }
          if (widget.isTag) {
            return null;
          }
          return null;
        },
        // onSaved: (value) {
        //   widget.controller.text = value!;
        // },
      ),
    );
  }

  Widget? _buildSuffixIcon() {
    if (widget.controller.text.isNotEmpty) {
      return IconButton(
        icon: Icon(
          _passwordVisible ? Icons.visibility : Icons.visibility_off,
          color: kThirdBackgroundColor,
        ),
        onPressed: () {
          setState(() {
            _passwordVisible = !_passwordVisible;
          });
        },
      );
    } else {
      return null;
    }
  }
}
