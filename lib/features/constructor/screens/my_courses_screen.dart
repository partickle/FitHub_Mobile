import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

const kPremiumColor = Color(0xFFD0FD3E);
const kPrimaryColor = Color(0xFFD0FD3E);
const courseTitleStyle = TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white);
const courseSubtitleStyle = TextStyle(fontSize: 14, color: Colors.white70);

class MyCoursesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back button press
          },
        ),
        title: Text('My courses'),
      ),
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.all(16.0),
            children: [
              SizedBox(height: 80), // Increase space for the floating button
              CourseCard(
                title: 'Learn the Basic of Training',
                subtitle: 'Workouts for Beginner',
                imageUrl: 'assets/images/constructor/first_courses.png',
                isPremium: false,
                onTap: () {
                  // Handle card tap
                },
              ),
              SizedBox(height: 16.0),
              CourseCard(
                title: 'Full Body Goal Crusher',
                subtitle: 'Workouts for Beginner',
                imageUrl: 'assets/images/constructor/second_courses.png',
                isPremium: true,
                onTap: () {
                  // Handle card tap
                },
              ),
            ],
          ),
          Positioned(
            top: 16,
            left: MediaQuery.of(context).size.width / 2 - 28,
            child: FloatingActionButton(
              onPressed: () {
              },
              child: Icon(Icons.add),
              backgroundColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class CourseCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageUrl;
  final bool isPremium;
  final VoidCallback onTap;

  const CourseCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
    required this.isPremium,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    Color iconColor = isPremium ? kPremiumColor : kPrimaryColor;

    return Container(
      height: 170,
      width: 340,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.black.withOpacity(0.5),
        image: DecorationImage(
          image: AssetImage(imageUrl),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.darken),
        ),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(17),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: courseTitleStyle,
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
                            color: iconColor,
                          ),
                        ),
                      ),
                      child: Text(
                        subtitle,
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
                ),
              ],
            ),
          ),
          Positioned.fill(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: onTap,
                borderRadius: BorderRadius.circular(20),
                splashColor: Colors.white.withOpacity(0.2),
                highlightColor: Colors.white.withOpacity(0.1),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
