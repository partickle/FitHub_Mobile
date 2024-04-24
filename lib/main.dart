import 'package:fithub_app/screens/constants.dart';
import 'package:fithub_app/screens/registration/authorization_screen.dart';
import 'package:fithub_app/screens/registration/registrarion_finish_screen.dart';
import 'package:fithub_app/screens/registration/registration_screen.dart';
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
        '/registration': (context) => const RegistrationScreen
        (),
         '/registration_finish': (context) => const RegistrationFinishScreen(),
      },
    );
  }
}
