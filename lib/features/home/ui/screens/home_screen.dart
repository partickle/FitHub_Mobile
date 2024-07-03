import 'package:auto_route/auto_route.dart';
import 'package:fithub/features/courses/providers/course_provider.dart';
import 'package:fithub/features/home/ui/widgets/card_horizontal_scroll.dart'; 
import 'package:fithub/features/home/ui/widgets/course_card.dart';
import 'package:fithub/features/home/ui/widgets/course_splash.dart';
import 'package:fithub/ui/widgets/custom_toggle_switch.dart';
import 'package:fithub/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:fithub/res/constants/constants.dart';
import 'package:provider/provider.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ValueNotifier<int> _selectedLevelNotifier = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    final courseProvider = Provider.of<CourseProvider>(context);

    final recommendedCourses = courseProvider.getRecommendedCourses();
    final activeCourses = courseProvider.getActiveCourses();

    return Scaffold(
      body: SafeArea(
        top: false,
        bottom: true,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60, left: 25, right: 25, bottom: 25),
                child: Text(
                  'Home',
                  style: homeTitleStyle, 
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Text(
                      'Active courses',
                      style: homeSubtitleStyle, 
                    ),
                  ),

                  (activeCourses.isNotEmpty) ?
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: CardHorizontalScroll(courseList: activeCourses)
                    ) :
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 50),
                      child: CourseSplash()
                    ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Text(
                      'Recommended',
                      style: homeSubtitleStyle, 
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: CardHorizontalScroll(courseList: recommendedCourses)
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Course List',
                              style: homeSubtitleStyle, 
                            ),
                            TextButton(
                              onPressed: () {
                                AutoRouter.of(context).push(const CourseListRoute());
                              },
                              child: Text(
                                'See all',
                                style: homeSeeAllStyle,
                              )
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: CustomToggleSwitch(
                      initialLabelIndex: 0,
                      labels: levels,
                      levelNotifier: _selectedLevelNotifier,
                    ),
                  ),
                  ValueListenableBuilder<int>(
                    valueListenable: _selectedLevelNotifier,
                    builder: (context, value, child) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 25, right: 25, top: 20),
                        child: Column(
                          children: courseProvider.getCoursesByLevel(levels[value]).take(3).map((course) {
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: CourseCard(
                                title: course.title,
                                subtitle: course.subtitle,
                                imageUrl: course.imageUrl,
                                isPremium: course.isPremium,
                                onTap: () {
                                  AutoRouter.of(context).push(CourseRoute(courseId: course.id));
                                }
                              ),
                            );
                          }).toList(),
                        ),
                      );
                    }
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
