import 'package:fithub/ui/widgets/up_back_button.dart';
import 'package:flutter/material.dart';
import 'package:fithub/constants.dart';

class BasePage extends StatelessWidget {
  final String title;
  final Widget child;

  const BasePage({
    super.key,
    required this.title,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        bottom: true,
        child: Stack(
          fit: StackFit.expand,
          children: [
            const UpBackButton(isLeft: true, isTransparent: false),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  title,
                  style: globalTitleStyle,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Positioned.fill(
              top: 80,
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: child
              ),
            ),
          ],
        ),
      ),
    );
  }
}
