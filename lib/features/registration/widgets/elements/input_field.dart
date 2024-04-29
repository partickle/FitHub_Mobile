import 'package:fithub/constants.dart';
import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  final String labelText;
  final bool isObscure;
  final bool isEmail;
  final bool isPassword;
  final bool isTag;
  final TextEditingController controller;
  final TextEditingController? passwordController;

  const InputField({
    super.key,
    required this.labelText,
    required this.isObscure,
    required this.isEmail,
    required this.isPassword,
    required this.isTag,
    required this.controller,
    required this.passwordController
  });

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  late bool _passwordVisible;

  @override
  void initState() {
    super.initState();
    _passwordVisible = !widget.isObscure;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, bottom: 5),
      child: TextFormField(
        controller: widget.controller,
        obscureText: !_passwordVisible,
        style: registerInputStyle.copyWith(color: Colors.white),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          labelText: widget.labelText,
          errorStyle: registerInputStyle,
          floatingLabelStyle: registerInputStyle.copyWith(color: kPrimaryColor),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: kThirdBackgroundColor),
          ),
          suffixIcon:_buildSuffixIcon(),
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return ('Please Enter Your ${widget.labelText}');
          }
          if (widget.isEmail && !RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+\\.[a-z]+")
              .hasMatch(value)) {
            return ("Please enter a valid email");
          }
          if (widget.isPassword && !RegExp(r'^.{6,}$').hasMatch(value)) {
            return ("Enter valid password (min. 6 character)");
          }
          if (widget.passwordController != null && 
              widget.passwordController?.text != value) {
            return ("Passwords don't match");
          }
          if (widget.isTag) {
            return null;
          }
          return null;
        },
      ),
    );
  }

  Widget? _buildSuffixIcon() {
    if (widget.isObscure && widget.controller.text.isNotEmpty) {
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
