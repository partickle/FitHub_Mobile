import 'package:auto_route/auto_route.dart';
import 'package:fithub/router/app_router.dart';
import 'package:flutter/material.dart';

class ReviewsScreen extends StatefulWidget {
  @override
  _ReviewsScreenState createState() => _ReviewsScreenState();
}

class _ReviewsScreenState extends State<ReviewsScreen> {
  String selectedFilter = 'Recent';

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

  List<ReviewCard> get sortedReviews {
    List<ReviewCard> sortedList = List.from(reviews);
    switch (selectedFilter) {
      case 'Recent':
        sortedList.sort((a, b) => b.daysAgo.compareTo(b.daysAgo));
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

  void selectFilter(String filter) {
    setState(() {
      selectedFilter = filter;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reviews'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 24.0),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFF2C2C2E),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        FilterButton(
                          title: 'Recent',
                          isSelected: selectedFilter == 'Recent',
                          onTap: () => selectFilter('Recent'),
                        ),
                        FilterButton(
                          title: 'Critical',
                          isSelected: selectedFilter == 'Critical',
                          onTap: () => selectFilter('Critical'),
                        ),
                        FilterButton(
                          title: 'Favourable',
                          isSelected: selectedFilter == 'Favourable',
                          onTap: () => selectFilter('Favourable'),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 32),
                  const Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Padding(
                          padding: EdgeInsets.only(left: 12.0),
                          child: Text(
                            '4.8',
                            style: TextStyle(color: Colors.white, fontSize: 48),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 7,
                        child: Column(
                          children: [
                            RatingProgressWidget(
                              text: '5',
                              value: 1.0,
                            ),
                            RatingProgressWidget(
                              text: '4',
                              value: 0.8,
                            ),
                            RatingProgressWidget(
                              text: '3',
                              value: 0.6,
                            ),
                            RatingProgressWidget(
                              text: '2',
                              value: 0.4,
                            ),
                            RatingProgressWidget(
                              text: '1',
                              value: 0.2,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  const Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      '174 Ratings',
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.end,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Expanded(
                    child: ListView(
                      children: sortedReviews,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 50,
              left: 16,
              right: 16,
              child: Container(
                width: 200,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: const Color(0xFFD0FD3E),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32),
                    ),
                  ),
                  onPressed: () {
                  AutoRouter.of(context).push(const WriteReviewScreenRoute());
                  },
                  child: const Text('Write a Review'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RatingProgressWidget extends StatelessWidget {
  const RatingProgressWidget({
    super.key,
    required this.text,
    required this.value,
  });

  final String text;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        flex: 1,
        child: Text(text, style: const TextStyle(color: Colors.white)),
      ),
      Expanded(
        flex: 11,
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.8,
          child: LinearProgressIndicator(
            value: value,
            minHeight: 10,
            backgroundColor: Colors.grey,
            borderRadius: BorderRadius.circular(8),
            valueColor: const AlwaysStoppedAnimation(Colors.white),
          ),
        ),
      ),
    ]);
  }
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

class ReviewCard extends StatelessWidget {
  final String name;
  final double rating;
  final int daysAgo;
  final String reviewText;

  const ReviewCard({
    Key? key,
    required this.name,
    required this.rating,
    required this.daysAgo,
    required this.reviewText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[850],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Image.asset(
                    'assets/images/community/community_avatar.png',
                  ),
                ),
                const SizedBox(width: 8),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name,
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                    const SizedBox(width: 8),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 4, vertical: 0.1),
                        child: Text(
                          rating.toString(),
                          style: const TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  child: Text('$daysAgo' + 'd ago',
                      style: const TextStyle(color: Colors.grey)),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(reviewText),
          ],
        ),
      ),
    );
  }
}
