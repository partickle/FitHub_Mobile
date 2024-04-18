import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fithub/screens/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double _opacity = 0.0;

  @override
  void initState() {
    super.initState();
    _startAnimation();
  }

  Future<void> _startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 200));
    setState(() {
      _opacity = 1.0;
    });
    
    await Future.delayed(const Duration(milliseconds: 2000));
    // setState(() {
    //   _opacity = 0.0;
    // });
    
    // await Future.delayed(const Duration(milliseconds: 400));
    
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => const WelcomeScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedOpacity(
        opacity: _opacity,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
        child: Center(
          child: SvgPicture.asset(
            'assets/icons/logo.svg',
            width: 150,
            height: 150,
          )
        )
      )
    );
  }
}