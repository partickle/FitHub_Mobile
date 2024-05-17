import 'package:fithub/features/home/models/course_model.dart';
import 'package:fithub/features/home/ui/widgets/custom_tag.dart';
import 'package:fithub/features/home/ui/widgets/image_container.dart';
import 'package:flutter/material.dart';

class CourseCardWidget extends StatelessWidget {
  final int courseIndex;

  const CourseCardWidget({super.key, this.courseIndex = 0});

  @override
Widget build(BuildContext context) {
  Course course = Course.courses[courseIndex];

  Color iconColor = course.isPremium ? Colors.red : const Color(0xFFD0FD3E);

  // Высота текста course.subtitle
  double subtitleHeight = 20.0; // Предположим, что это высота вашего текста

  return InkWell(
    onTap: () {
      print('Image tapped!');
    },
    child: SizedBox(
      width: 327.0,
      height: 160.0,
      child: ImageContainer(
        width: MediaQuery.of(context).size.width * 0.45,
        height: MediaQuery.of(context).size.height * 0.45,
        cardImageUrl: course.cardImageUrl,
        imageUrl: 'assets/icons/pro.png',
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20), //заголовок отступ
                  child: Text(
                    course.title,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: const Color.fromARGB(255, 254, 254, 253),
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 10), // подзаголовк отступ
                  child: CustomTag(
                    backgroundColor: course.isPremium
                        ? Colors.red.withOpacity(0.5)
                        : Colors.white.withOpacity(0.5),
                    children: [
                      Transform.rotate(
                        angle: 1.5708,
                        child: Icon(
                          Icons.horizontal_rule,
                          color: iconColor,
                        ),
                      ),
                      Text(
                        course.subtitle,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: const Color(0xFFD0FD3E),
                          fontSize: 15.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            if (course.isPremium)
              Positioned(
                bottom: subtitleHeight - 30 , // Вычисляем bottom для позиционирования
                right: 16,
                child: Image.asset(
                  'assets/icons/pro.png',
                  width: 40,
                  height: 40,
                ),
              ),
          ],
        ),
      ),
    ),
  );
}
}