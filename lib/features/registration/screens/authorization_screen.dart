import 'package:fithub/features/registration/screens/first_registration_screen.dart';
import 'package:flutter/material.dart';

class AuthorizationScreen extends StatefulWidget {
  const AuthorizationScreen({super.key});

  @override
  State<AuthorizationScreen> createState() => _AuthorizationScreenState();
}

class _AuthorizationScreenState extends State<AuthorizationScreen>
    with WidgetsBindingObserver {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  final ScrollController _scrollController = ScrollController();
  bool _passwordVisible = false; // Изначально пароль не виден
  bool _isLoginSelected = true;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    WidgetsBinding.instance.addObserver(this);
    _passwordController.addListener(() {
      setState(
          () {}); // При изменении текста обновляем UI для показа/скрытия иконки
    });
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _scrollController.dispose();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  void _toggleSelected(bool isLogin) {
    setState(() {
      _isLoginSelected = isLogin;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1E),
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        controller: _scrollController,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                ClipPath(
                  clipper: TrapezoidClipper(),
                  child: Image.asset(
                    'assets/icons/rectangle.png',
                    width: 700,
                    height: 500,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 60,
                  left: 20,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () => _toggleSelected(true),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 8),
                          decoration: BoxDecoration(
                            color: _isLoginSelected
                                ? const Color(0xFFD0FD3E)
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            'Login',
                            style: TextStyle(
                              color: _isLoginSelected
                                  ? Colors.black
                                  : Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      GestureDetector(
                        onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const RegistrationScreen()),
                            ),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 8),
                          decoration: BoxDecoration(
                            color: !_isLoginSelected
                                ? const Color(0xFFD0FD3E)
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                              color: !_isLoginSelected
                                  ? Colors.black
                                  : Colors.white,
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
                  top: 380,
                  child: Text(
                    'Welcome',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.w700,
                    ),
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
                  const SizedBox(height: 12),
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
                      suffixIcon: _passwordController.text.isNotEmpty
                          ? IconButton(
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
                            )
                          : null,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.only(left: 230, bottom: 50),
              child: _buildForgotPasswordButton(() {
                // Обработчик забытого пароля
              }),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(46, 0, 31, 46),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildMaybeLaterButton(() {
                    // Обработчик кнопки "Maybe later"
                  }),
                  SizedBox(
                    width: 120,
                    height: 50,
                    child: FloatingActionButton(
                      onPressed: () {
                        // Обработка нажатия кнопки "Login" или "Sign Up"
                        String email = _emailController.text;
                        String password = _passwordController.text;
                        if (_isLoginSelected) {
                          // Логика для входа
                          debugPrint('Logging in with $email');
                        } else {
                          // Навигация на экран регистрации
                          // Навигация на экран регистрации
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const RegistrationScreen()),
                            );
                          }
                        },
                      backgroundColor: const Color(0xFFD0FD3E),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(28),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            _isLoginSelected ? 'Login' : 'Sign Up',
                            style: const TextStyle(color: Colors.black),
                          ),
                          const Padding(padding: EdgeInsets.only(left: 8)),
                          const Icon(Icons.arrow_forward, color: Colors.black),
                        ],
                      ),
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

  Widget _buildForgotPasswordButton(VoidCallback onPressed) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      child: const Text(
        'Forgot password',
        style: TextStyle(
          color: Color(0xFFD0FD3E),
          fontSize: 12,
          fontWeight: FontWeight.w700,
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
    path.moveTo(size.height, size.width * 0.9);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
