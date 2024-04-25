import 'package:fithub/features/registration/screens/authorization_screen.dart';
import 'package:fithub/features/registration/screens/second_registration_screen.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  late TextEditingController _passwordAgainController;
  final ScrollController _scrollController = ScrollController();
  bool _passwordVisible = false;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _passwordAgainController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _passwordAgainController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1E),
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: 20),
        controller: _scrollController,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                ClipPath(
                  clipper: TrapezoidClipper(),
                  child: Image.asset(
                    'assets/icons/rectangle_registration.png',
                    width: 700,
                    height: 450,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 60,
                  left: 20,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AuthorizationScreen()),
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 8),
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Text(
                            'Login',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      GestureDetector(
                        onTap: () {
                          // Реализуйте логику переключения между "Login" и "Sign Up" по мере необходимости
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 8),
                          decoration: BoxDecoration(
                            color: const Color(0xFFD0FD3E),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Positioned(
                  left: 32,
                  top: 250,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello rookies,',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(
                        'Enter your information below or\nlogin with another account',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                children: <Widget>[
                  TextField(
                    controller: _emailController,
                    style: const TextStyle(color: Color(0xFFFFFFFF)),
                    decoration: const InputDecoration(
                      hintText: 'Email',
                      hintStyle: TextStyle(color: Color(0xFFFFFFFF)),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF2C2C2E)),
                      ),
                    ),
                  ),
                  const SizedBox(height: 18),
                  TextField(
                    controller: _passwordController,
                    style: const TextStyle(color: Color(0xFFFFFFFF)),
                    obscureText: !_passwordVisible,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: const TextStyle(color: Color(0xFFFFFFFF)),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF2C2C2E)),
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _passwordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Theme.of(context).primaryColorDark,
                        ),
                        onPressed: () {
                          setState(() {
                            _passwordVisible = !_passwordVisible;
                          });
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: 18),
                  TextField(
                    controller: _passwordAgainController,
                    style: const TextStyle(color: Color(0xFFFFFFFF)),
                    obscureText: !_passwordVisible,
                    decoration: InputDecoration(
                      hintText: 'Password again',
                      hintStyle: const TextStyle(color: Color(0xFFFFFFFF)),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF2C2C2E)),
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _passwordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Theme.of(context).primaryColorDark,
                        ),
                        onPressed: () {
                          setState(() {
                            _passwordVisible = !_passwordVisible;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 90),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 46),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildMaybeLaterButton(() {
                    // Обработчик кнопки "Maybe later"
                  }),
                  ElevatedButton(
                    onPressed: () {
                      String email = _emailController.text.trim();
                      String password = _passwordController.text;
                      String passwordAgain = _passwordAgainController.text;

                      if (email.isNotEmpty &&
                          password.isNotEmpty &&
                          passwordAgain.isNotEmpty &&
                          password == passwordAgain) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const RegistrationFinishScreen()),
                        );
                      } else {
                        // Показать сообщение об ошибке или выполнить другие действия
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: const Text('ОШИБКА'),
                            content:
                                const Text('Пожалуйста, заполните все поля правильно.'),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () => Navigator.of(context).pop(),
                                child: const Text('OK'),
                              ),
                            ],
                          ),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          const Color(0xFFD0FD3E), // Цвет фона кнопки
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(28),
                      ),
                    ),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Sign Up',
                          style: TextStyle(color: Colors.black),
                        ),
                        Padding(padding: EdgeInsets.only(left: 8)),
                        Icon(Icons.arrow_forward, color: Colors.black),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMaybeLaterButton(VoidCallback onPressed) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      child: const Text(
        'Maybe later',
        style: TextStyle(
          color: Color(0xFFFFFFFF),
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}

class TrapezoidClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(size.height, size.width * 0.8);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
