import 'package:fithub/features/courses/data/models/course_model.dart';
import 'package:fithub/features/home/ui/widgets/course_card.dart';
import 'package:flutter/material.dart';

class CardHorizontalScroll extends StatelessWidget {
  final List<Course> courseList;

  const CardHorizontalScroll({
    super.key,
    required this.courseList
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 172,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: courseList.length,
        itemBuilder: (context, index) {
          final course = courseList[index];
          return Padding(
            padding: EdgeInsets.only(
              left: (index == 0) ? 25 : 10,
              right: (index == courseList.length - 1) ? 25 : 10,
            ),
            child: CourseCard(
              title: course.title,
              subtitle: course.subtitle,
              imageUrl: course.imageUrl,
              isPremium: course.isPremium,
              onTap: () {},
            ),
          );
        },
      ),
    );
  }
}