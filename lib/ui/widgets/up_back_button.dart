import 'package:flutter/material.dart';
import 'package:fithub/constants.dart';
import 'package:auto_route/auto_route.dart';

class UpBackButton extends StatelessWidget {
  final bool isLeft;
  final bool isTransparent;

  const UpBackButton({
    super.key,
    required this.isLeft,
    required this.isTransparent
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 30 + MediaQuery.of(context).padding.top,
      left: isLeft ? 25 : null,
      right: isLeft ? null : 25,
      child: SizedBox(
        height: 40,
        width: 40,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.only(left: 8),
            foregroundColor: kTextColor,
            backgroundColor: isTransparent ? Colors.black.withAlpha(51): kSecBackgroundColor,
            shape: const CircleBorder()
          ),
          onPressed: () {
            AutoRouter.of(context).maybePop();
          },
          child: const Icon(Icons.arrow_back_ios, size: 25),
        ),
      )
    );
  }
}