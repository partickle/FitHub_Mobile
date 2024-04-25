import 'package:fithub/constants.dart';
import 'package:fithub/features/registration/screens/authorization_screen.dart';
import 'package:fithub/features/registration/screens/first_registration_screen.dart';
import 'package:fithub/features/registration/screens/second_registration_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FitHub',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        primaryColor: kPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
      ),
      initialRoute: '/authorization', // Устанавливаем начальный маршрут
      routes: {
        '/authorization': (context) => const AuthorizationScreen(),
        '/registration': (context) => const RegistrationScreen(),
         '/registration_finish': (context) => const RegistrationFinishScreen(),
      },
    );
  }
}
