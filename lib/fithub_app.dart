import 'package:fithub/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:fithub/router/app_router.dart';

class FitHubApp extends StatefulWidget {
  const FitHubApp({super.key});

  @override
  State<FitHubApp> createState() => _FitHubAppState();
}

class _FitHubAppState extends State<FitHubApp> {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(
        // navigatorObservers: () => [
        //   TalkerRouteObserver(GetIt.I<Talker>()),
        // ],
      ),
      debugShowCheckedModeBanner: false,
      title: 'FitHub',
      theme: mainTheme
    );
  }
}