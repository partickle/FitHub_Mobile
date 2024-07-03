import 'package:fithub/res/constants/constants.dart';
import 'package:flutter/material.dart';

class DurationWidget extends StatelessWidget {
  final String durationText;
  final bool isTransparent;

  const DurationWidget({
    super.key,
    required this.durationText,
    required this.isTransparent
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 33,
      width: 90,
      decoration: BoxDecoration(
        color: (isTransparent) ? Colors.black.withAlpha(70) : kSecBackgroundColor,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.play_circle,
            color: Colors.white,
            size: 20,
          ),
          const SizedBox(width: 5),
          Text(
            durationText,
            style: courseSubtitleStyle.copyWith(color: Colors.white),
          )
        ],
      ),
    );
  }
}