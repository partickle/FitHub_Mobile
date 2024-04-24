import 'package:fithub_app/screens/registration/authorization_screen.dart';
import 'package:flutter/material.dart';

class RegistrationFinishScreen extends StatefulWidget {
  const RegistrationFinishScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationFinishScreen> createState() => _RegistrationFinishScreenState();
}

class _RegistrationFinishScreenState extends State<RegistrationFinishScreen>
    with WidgetsBindingObserver {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  late TextEditingController _passwordAgainController;
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _passwordAgainController = TextEditingController();
    WidgetsBinding.instance!.addObserver(this);
    _passwordController.addListener(() {
      setState(
          () {}); // При изменении текста обновляем UI для показа/скрытия иконки
    });
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _passwordAgainController.dispose();
    _scrollController.dispose();
    WidgetsBinding.instance!.removeObserver(this);
    super.dispose();
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
                                builder: (context) =>
                                    const AuthorizationScreen()),
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
                        "That's almost all,",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(
                        'It remains to enter only your full name\nand a unique user tag',
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
                      hintText: 'First name',
                      hintStyle: TextStyle(color: Color(0xFFFFFFFF)),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF2C2C2E)),
                      ),
                    ),
                  ),
                  const SizedBox(height: 18),
                  const TextField(
                    style: TextStyle(color: Color(0xFFFFFFFF)),
                    decoration: InputDecoration(
                      hintText: 'Last name',
                      hintStyle: TextStyle(color: Color(0xFFFFFFFF)),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF2C2C2E)),
                      ),
                    ),
                  ),
                  const SizedBox(height: 18),
                  const TextField(
                    decoration: InputDecoration(
                      hintText: 'User tag',
                      hintStyle: TextStyle(color: Color(0xFFFFFFFF)),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF2C2C2E)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            const Padding(
              padding: EdgeInsets.only(
                  left: 230,
                  bottom: 80), // размещение кнопки сигн ап и мэйби бейби
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(260, 0, 31, 46),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 120,
                    height: 50,
                    child: FloatingActionButton(
                      onPressed: () {
                        // Обработка нажатия кнопки "Sign Up"
                        String email = _emailController.text;
                        String password = _passwordController.text;
                        print('Signing up with $email');
                        // Здесь можно добавить логику регистрации пользователя
                      },
                      backgroundColor: const Color(0xFFD0FD3E),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(28),
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
                  ),
                ],
              ),
            ),
          ],
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
