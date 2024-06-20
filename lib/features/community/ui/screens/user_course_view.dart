import 'package:auto_route/auto_route.dart';
import 'package:fithub/features/community/components/custom_app_bar.dart';
import 'package:fithub/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../components/review_card.dart';
import '../components/review_summary.dart';
import '../components/course_details.dart';
import '../components/warm_up_card.dart';

class UserCourseView extends StatelessWidget {
  final List<ReviewCard> reviews = [
    const ReviewCard(
      name: 'Sharon Jem',
      rating: 4.8,
      daysAgo: 2,
      reviewText:
          'Had such an amazing session with Maria. She instantly picked up on the level of my fitness and adjusted the workout to suit me whilst also pushing me to my limits.',
    ),
    const ReviewCard(
      name: 'Amy Gary',
      rating: 4.2,
      daysAgo: 3,
      reviewText:
          'Maria has been amazing! Joining her coaching has been transformational for me and she makes it so much fun to workout with her I\'ve had several personal training experiences and this one is by far the best. Maria may very well be the best personal trainer in this app.',
    ),
    const ReviewCard(
      name: 'Phillip Amauro Lubin',
      rating: 3.6,
      daysAgo: 5,
      reviewText:
          'I am not very satisfied with Maria. But app design is awesome. Should I be a designer too?',
    ),
    const ReviewCard(
      name: 'Phillip Amauro Lubin',
      rating: 4.0,
      daysAgo: 5,
      reviewText:
          'When I started my course in sports, it seemed to me that it would be a steep path, complete and difficult. But now, several months later, I can say with confidence that it was the right decision! This product exceeded all my expectations. It not only helped me become physically stronger and more resilient, but also gave me the opportunity to develop skills of self-discipline and determination. In addition, I enjoyed the process and meeting new people. There is no doubt that this course was steep, but it was worth every step taken! I highly recommend him to anyone who feels like they want to better themselves and achieve their goals.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Stack(
        children: [
          CustomScrollView(
            slivers: <Widget>[
              const CustomAppBar(),
              SliverPadding(
                padding: const EdgeInsets.all(16.0),
                sliver: SliverList(
                  delegate: SliverChildListDelegate(
                    <Widget>[
                      const CourseDetails(),
                      const ReviewSummary(),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          const CircleAvatar(
                            backgroundImage: AssetImage(
                                'assets/images/community/community_avatar.png'),
                          ),
                          const CircleAvatar(
                            backgroundImage: AssetImage(
                                'assets/images/community/community_avatar_second.png'),
                          ),
                          const CircleAvatar(
                            backgroundImage: AssetImage(
                                'assets/images/community/community_avatar_third.png'),
                          ),
                          const CircleAvatar(
                            backgroundColor: Color(0xFFD0FD3E),
                            child: Text('174',
                                style: TextStyle(color: Colors.black)),
                          ),
                          const Spacer(),
                          InkWell(
                            onTap: () {
                              AutoRouter.of(context).push(const ReviewsRoute());
                            },
                            child: const Padding(
                              padding: EdgeInsets.only(bottom: 8.0),
                              child: Text(
                                'Read all reviews',
                                style: TextStyle(
                                  color: Color(0xFFD0FD3E),
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      SizedBox(
                        height: 200,
                        child: PageView(
                          children: reviews,
                        ),
                      ),
                      const SizedBox(height: 16),
                      const WarmUpCard(),
                      const SizedBox(height: 100),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 60,
            left: 16,
            right: 16,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFD0FD3E),
                minimumSize: const Size(double.infinity, 60),
              ),
              child: const Text(
                'Begin course',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
