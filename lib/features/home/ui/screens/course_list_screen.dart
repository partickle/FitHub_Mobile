import 'package:auto_route/auto_route.dart';
import 'package:fithub/res/constants/constants.dart';
import 'package:fithub/features/courses/data/repository/providers/course_provider.dart';
import 'package:fithub/features/home/ui/widgets/course_card.dart';
import 'package:fithub/ui/components/base_page.dart';
import 'package:fithub/ui/widgets/custom_toggle_switch.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

@RoutePage()
class CourseListScreen extends StatefulWidget {
  const CourseListScreen({super.key});

  @override
  State<CourseListScreen> createState() => _CourseListScreenState();
}

class _CourseListScreenState extends State<CourseListScreen> {
  final ValueNotifier<int> _selectedLevelNotifier = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    final courseProvider = Provider.of<CourseProvider>(context);

    return BasePage(
      title: 'Course list',
      isBack: true,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: CustomToggleSwitch(
              initialLabelIndex: 0,
              labels: levels,
              levelNotifier: _selectedLevelNotifier,
            ),
          ),
          Expanded(
            child: ValueListenableBuilder<int>(
              valueListenable: _selectedLevelNotifier,
              builder: (context, value, child) {
                return ListView(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  children: courseProvider.getCoursesByLevel(levels[value]).map((course) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: CourseCard(
                        title: course.title,
                        subtitle: course.subtitle,
                        imageUrl: course.imageUrl,
                        isPremium: course.isPremium,
                        onTap: () {},
                      ),
                    );
                  }).toList(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
