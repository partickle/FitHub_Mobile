import 'package:flutter/material.dart';
import 'package:fithub/res/constants/constants.dart';
import 'package:auto_route/auto_route.dart';

class DownBackButton extends StatelessWidget {
 const DownBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 35,
      left: 25,
      child: SizedBox(
        width: 55,
        height: 55,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(10),
            foregroundColor: kTextColor,
            backgroundColor: kSecBackgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(28),
            ),
          ),
          onPressed: () {
            AutoRouter.of(context).maybePop();
          },
          child: const Icon(Icons.arrow_back, size: 25),
        ),
      )
    );
  }
}