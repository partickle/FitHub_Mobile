import 'package:equatable/equatable.dart';

class Premium extends Equatable {
  final String title;
  final String subtitle;
  final String description;
  final String imageUrl;

  const Premium({
    required this.title,
    required this.subtitle,
    required this.description,
    required this.imageUrl,
  });

  static List<Premium> courses = [
    const Premium(
      title: 'Be Premium',
      subtitle: 'Get unlimited access',
      description: "When you subscribe, you'll get\ninstant unlimited access",
      imageUrl: 'assets/images/settings/be_premium.png',
    )
  ];

  @override
  List<Object?> get props => [
        title,
        subtitle,
        description,
        imageUrl,
      ];
}
