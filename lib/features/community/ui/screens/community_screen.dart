import 'package:auto_route/auto_route.dart';
import 'package:fithub/features/community/ui/components/workout_card.dart';
import 'package:flutter/material.dart';
import 'package:fithub/router/app_router.dart';

@RoutePage()
class CommunityScreen extends StatefulWidget {
  @override
  _CommunityScreenState createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen> {
  final List<Workout> workouts = [
    Workout('Wake Up Call', '| Workouts for Beginner',
        'assets/images/community/user_course.png', 4.6, 2),
    Workout('Full Body Goal Crusher', '| Workouts for Beginner',
        'assets/images/community/user_course.png', 4.5, 5),
    Workout('Lower Body Strength', '| Workouts for Beginner',
        'assets/images/community/third_user_course.png', 4.8, 1),
  ];

  String selectedFilter = 'Recent';

  List<Workout> get sortedWorkouts {
    List<Workout> sortedList = List.from(workouts);
    switch (selectedFilter) {
      case 'Recent':
        sortedList.sort((a, b) => b.daysAgo.compareTo(a.daysAgo));
        break;
      case 'Critical':
        sortedList.sort((a, b) => a.rating.compareTo(b.rating));
        break;
      case 'Favourable':
        sortedList.sort((a, b) => b.rating.compareTo(a.rating));
        break;
    }
    return sortedList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: ''),
          BottomNavigationBarItem(
              icon: CircleAvatar(
                  radius: 10,
                  backgroundImage:
                      AssetImage('assets/images/community/profile.jpg')),
              label: ''),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Expanded(
                  child: Center(
                    child: Text('Community',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold)),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    AutoRouter.of(context).push(const SearchCourseRoute());
                  },
                  child: const Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                FilterButton(
                  title: 'Recent',
                  isSelected: selectedFilter == 'Recent',
                  onTap: () {
                    setState(() {
                      selectedFilter = 'Recent';
                    });
                  },
                ),
                const SizedBox(width: 10),
                FilterButton(
                  title: 'Critical',
                  isSelected: selectedFilter == 'Critical',
                  onTap: () {
                    setState(() {
                      selectedFilter = 'Critical';
                    });
                  },
                ),
                const SizedBox(width: 10),
                FilterButton(
                  title: 'Favourable',
                  isSelected: selectedFilter == 'Favourable',
                  onTap: () {
                    setState(() {
                      selectedFilter = 'Favourable';
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: sortedWorkouts.length,
                itemBuilder: (context, index) {
                  final workout = sortedWorkouts[index];
                  return WorkoutCard(workout: workout);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Workout {
  final String title;
  final String subtitle;
  final String imagePath;
  final double rating;
  final int daysAgo;

  Workout(this.title, this.subtitle, this.imagePath, this.rating, this.daysAgo);
}

class FilterButton extends StatelessWidget {
  final String title;
  final bool isSelected;
  final VoidCallback onTap;

  const FilterButton({
    Key? key,
    required this.title,
    this.isSelected = false,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 6),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFFD0FD3E) : Colors.transparent,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: isSelected ? Colors.black : Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
