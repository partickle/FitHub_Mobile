import 'package:flutter/material.dart';
import 'package:fithub/constants.dart';

class CourseSplash extends StatelessWidget {
  const CourseSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text: 'You don\'t have any active courses\n\n',
          style: homeSubtitleStyle.copyWith(fontSize: 15, fontWeight: FontWeight.w200),
          children: const <TextSpan>[
            TextSpan(
              text: 'Start taking the course ',
              style: TextStyle(color: kPrimaryColor),
            ),
            TextSpan(
              text: 'to view the active\n',
              style: TextStyle(color: kSubTextColor),
            ),
            TextSpan(
              text: 'courses',
              style: TextStyle(color: kSubTextColor),
            )
          ],
        ),
      ),
    );
  }
}