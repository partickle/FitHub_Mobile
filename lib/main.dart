import 'package:fithub/constants.dart';
import 'package:fithub/features/registration/screens/authorization_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:fithub/fithub_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const FitHubApp());
}
