import 'package:fithub/constants.dart';
import 'package:flutter/material.dart';

class InputLine extends StatefulWidget {
  final String name;
  final VoidCallback validation;

  const InputLine({
    super.key,
    required this.name,
    required this.validation
  });

  @override
  State<InputLine> createState() => _InputLineState();
}

class _InputLineState extends State<InputLine>  with WidgetsBindingObserver {
  late TextEditingController _passwordController;
  bool _passwordVisible = false;

    @override
  void initState() {
    super.initState();
    _passwordController = TextEditingController();
    WidgetsBinding.instance.addObserver(this);
    _passwordController.addListener(() {
      setState(() {}); // При изменении текста обновляем UI для показа/скрытия иконки
    });
  }

  @override
  void dispose() {
    _passwordController.dispose();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: TextField(
        controller: _passwordController,
        style: const TextStyle(color: Color(0xFFFFFFFF)),
        obscureText: !_passwordVisible,
        decoration: InputDecoration(
          focusColor: kThirdBackgroundColor,
          hoverColor: kPrimaryColor,
          labelText: widget.name,
          floatingLabelStyle: const TextStyle(color: kPrimaryColor),
          hintStyle: const TextStyle(color: Color(0xFFFFFFFF)),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF2C2C2E)),
          ),
          suffixIcon: _passwordController.text.isNotEmpty
              ? IconButton(
                  icon: Icon(
                    _passwordVisible
                        ? Icons.visibility
                        : Icons.visibility_off,
                    color: kThirdBackgroundColor,
                  ),
                  onPressed: () {
                    setState(() {
                      _passwordVisible = !_passwordVisible;
                    });
                  },
                )
              : null,
        ),
      ),
    );
  }
}