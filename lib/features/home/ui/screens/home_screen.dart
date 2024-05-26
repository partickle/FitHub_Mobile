
import 'package:auto_route/auto_route.dart';
import 'package:fithub/features/home/ui/widgets/course_card.dart';
import 'package:fithub/features/home/ui/widgets/course_splash.dart';
import 'package:flutter/material.dart';
import 'package:fithub/constants.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        bottom: true,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Home',
                style: homeTitleStyle, 
              ),
              const SizedBox(height: 35),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Active courses',
                    style: homeSubtitleStyle, 
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 50),
                    child: CourseSplash()
                  ),
                  Text(
                    'Recommended',
                    style: homeSubtitleStyle, 
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: ListView.builder(
                      itemCount: ,
                      itemBuilder: (context, index) {
                        CourseCard(
                          title: ,
                          level: ,
                          imageUrl: ,
                          isPremium: ,
                          onTap: () {},
                        )
                      },
                    )
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Course List',
                            style: homeSubtitleStyle, 
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'See all',
                              style: homeSeeAllStyle,
                            )
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              )
                  
            ],
            // Course.courses.map((course) {
            //   return Column(
            //     children: [
            //       CourseCardWidget(courseIndex: Course.courses.indexOf(course)),
            //       const SizedBox(height: 20),
            //     ],
            //   );
            // }).toList(),
          ),
        ),
      ),
    );
  }
}