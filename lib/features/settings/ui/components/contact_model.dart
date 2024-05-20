import 'package:equatable/equatable.dart';

class Contact extends Equatable {
  final String title;
  final String subtitle;
  final String review;

  const Contact({
    required this.title,
    required this.subtitle,
    required this.review,
  });

  static List<Contact> reviews = [
    const Contact(
      title: 'Below is the form',
      subtitle: 'You can leave a comment with suggestions for improving the application, complaints about use, problems with operation and users violating the security policy.',
      review: "Review (Optional)"
    )
  ];

  @override
  List<Object?> get props => [
        title,
        subtitle,
        review,
      ];
}
