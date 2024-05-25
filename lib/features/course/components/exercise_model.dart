import 'package:equatable/equatable.dart';

class Exercise extends Equatable {
  final String title;
  final String subtitle;
  final String backgroundImage;
  final int? duration; // Таймер на время
  final int? reps; // Количество повторений

  const Exercise({
    required this.title,
    required this.subtitle,
    required this.backgroundImage,
    this.duration,
    this.reps,
  });

  static List<Exercise> exercises = [
    const Exercise(
      title: 'Lunges with foot pull-up',
      subtitle: 'Simple Warm Up',
      backgroundImage: 'assets/images/course/first_exercise.gif',
      duration: 10, 
    ),
    const Exercise(
      title: 'Stretching of the hip joint',
      subtitle: 'Simple Warm Up',
      backgroundImage: 'assets/images/course/second_exercise.gif',
      reps: 15, 
    ),
  ];

  @override
  List<Object?> get props => [
        title,
        subtitle,
        backgroundImage,
        duration,
        reps,
      ];
}
