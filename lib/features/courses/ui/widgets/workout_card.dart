import 'package:fithub/res/constants/constants.dart';
import 'package:flutter/material.dart';

class WorkoutCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String duration;
  final VoidCallback onTap;

  const WorkoutCard({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.duration,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(14.0),
      child: Container(
        height: 80,
        width: 360,
        color: kSecBackgroundColor,
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      imageUrl,
                      height: 80,
                      width: 92,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 18),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 160,
                            height: 40,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                title,
                                style: courseTitleStyle.copyWith(fontSize: 16, height: 1.2),
                              ),
                            ),
                          ),
                          Text(
                            duration,
                            style: courseSubtitleStyle,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(20),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            Positioned.fill(
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: onTap,
                  splashColor: Colors.white.withOpacity(0.2),
                  highlightColor: Colors.white.withOpacity(0.1),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}