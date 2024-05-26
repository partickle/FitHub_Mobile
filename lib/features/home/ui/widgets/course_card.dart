import 'package:fithub/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CourseCard extends StatelessWidget {
  final String title;
  final String level;
  final String imageUrl;
  final bool isPremium;
  final VoidCallback onTap;

  const CourseCard({
    super.key,
    required this.title,
    required this.level,
    required this.imageUrl,
    required this.isPremium,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    Color iconColor = isPremium ? kPremiumColor : kPrimaryColor;

    return Container(
      height: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.black.withOpacity(0.5),
        image: DecorationImage(
          image: AssetImage(imageUrl),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.darken)
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(17),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: courseTitleStyle
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 8),
                      decoration: BoxDecoration(
                        border: Border(
                          left: BorderSide(
                            width: 3.0,
                            color: iconColor
                          ),
                        ),
                      ),
                      child: Text(
                        level,
                        style: courseSubtitleStyle,
                      ),
                    ),
                    if (isPremium)
                      SvgPicture.asset(
                        'assets/icons/pro.svg',
                        width: 20,
                        height: 20,
                      ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}