import 'package:equatable/equatable.dart';

class Course extends Equatable {
  final String id;
  final String title;
  final String subtitle;
  final String cardImageUrl;
  final String imageUrl;
  final bool isPremium; 
  final String urlImage; 

  const Course({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.cardImageUrl,
    required this.imageUrl,
    this.isPremium = false, 
    required this.urlImage,
  });

  static List<Course> courses = [
    const Course(
      id: '1',
      title: 'Learn the Basics of Training',
      subtitle: 'Workouts for Beginners',
      cardImageUrl: 'assets/icons/first_card.png',
      imageUrl: 'assets/icons/1.jpg',
      isPremium: true,
      urlImage: 'assets/icons/pro.png',
    ),
    const Course(
      id: '2',
      title: 'Learn the Basics of Training',
      subtitle: 'Workouts for Beginners',
      cardImageUrl: 'assets/icons/second_card.png',
      imageUrl: 'assets/icons/first_card.png',
      isPremium: false,
      urlImage: 'assets/icons/pro.png',
    ),
    const Course(
      id: '3',
      title: 'Learn the Basics of Training',
      subtitle: 'Workouts for Beginners',
      cardImageUrl: 'assets/icons/third_card.jpg',
      imageUrl: 'assets/icons/first_card.jpg',
      isPremium: true,
      urlImage: 'assets/icons/pro.png',
    ),
  ];

  @override
  List<Object?> get props => [
        id,
        title,
        subtitle,
        cardImageUrl,
        isPremium,
        urlImage,
      ];
}
