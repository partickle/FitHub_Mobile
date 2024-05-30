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
          style: homeSubtitleStyle.copyWith(fontSize: 14, fontWeight: FontWeight.w200),
          children: <TextSpan>[
            TextSpan(
              text: 'Start taking the course ',
              style: homeSubtitleStyle.copyWith(fontSize: 14, fontWeight: FontWeight.w200, color: kPrimaryColor),
            ),
            TextSpan(
              text: 'to view the active\n',
              style: homeSubtitleStyle.copyWith(fontSize: 14, fontWeight: FontWeight.w200, color: kSubTextColor),
            ),
            TextSpan(
              text: 'courses',
              style: homeSubtitleStyle.copyWith(fontSize: 14, fontWeight: FontWeight.w200, color: kSubTextColor),
            )
          ],
        ),
      ),
    );
  }
}