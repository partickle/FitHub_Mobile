import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:fithub/fithub_app.dart';

AppMetricaConfig get _config =>
    const AppMetricaConfig('ed566ab9-d42e-4a3e-b8c9-f3c61f4f1eac', logs: true);

Future<void> main() async {
  AppMetrica.runZoneGuarded(() {
    WidgetsFlutterBinding.ensureInitialized();

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    AppMetrica.activate(_config);
    AppMetrica.reportAppOpen('https://appmetrica.yandex.com');

    runApp(const FitHubApp());
  });
}
