import 'package:auto_route/auto_route.dart'; 
import 'package:fithub/features/home/ui/widgets/course_card.dart';
import 'package:fithub/features/home/ui/widgets/course_splash.dart';
import 'package:fithub/ui/widgets/custom_toggle_switch.dart';
import 'package:fithub/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:fithub/constants.dart';
import 'package:provider/provider.dart';
import 'package:fithub/data/providers/course_provider.dart';

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

    return Scaffold(
      body: SafeArea(
        top: true,
        bottom: true,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(25),
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
                    child: SizedBox(
                      height: 172,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: courseProvider.courses.length,
                        itemBuilder: (context, index) {
                          final course = courseProvider.courses[index];
                          return Padding(
                            padding: EdgeInsets.only(
                              left: (index == 0) ? 25 : 10,
                              right: (index == courseProvider.courses.length - 1) ? 25 : 10,
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
                    ),
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
                                AutoRouter.of(context).push(const CoursesRoute());
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
                  CustomToggleSwitch(
                    initialLabelIndex: 0,
                    labels: levels,
                    levelNotifier: _selectedLevelNotifier,
                  ),
                  ValueListenableBuilder<int>(
                    valueListenable: _selectedLevelNotifier,
                    builder: (context, value, child) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 25, right: 25, top: 20),
                        child: Column(
                          children: courseProvider.getCoursesByLevel(levels[value]).map((course) {
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: CourseCard(
                                title: course.title,
                                subtitle: course.subtitle,
                                imageUrl: course.imageUrl,
                                isPremium: course.isPremium,
                                onTap: () {}
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
