import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';

class Privacy extends Equatable {
  final String title;
  final Text subtitleFirst;
  final Text subtitleSecond;
  final Text subtitleThird;

  const Privacy({
    required this.title,
    required this.subtitleFirst,
    required this.subtitleSecond,
    required this.subtitleThird,
  });

  static List<Privacy> policy = [
    const Privacy(
      title: 'Lorem ipsum dolor sit amet',
      subtitleFirst: Text(
        "Consectetur adipiscing elit. Natoque phasellus lobortis mattis cursus faucibus hac proin risus. Turpis phasellus massa ullamcorper volutpat. Ornare commodo non integer fermentum nisi, morbi id. Vel tortor mauris feugiat amet, maecenas facilisis risus, in faucibus. Vestibulum ullamcorper fames eget enim diam fames faucibus duis ac. Aliquam non tellus semper in dignissim nascetur venenatis lacus. ",
      ),
      subtitleSecond: Text(
        'Lectus vel non varius interdum vel tellus sed mattis. Sit laoreet auctor arcu mauris tincidunt sociis tristique pharetra neque. Aliquam pharetra elementum nisl sapien. Erat nisl morbi eu dolor in. Sapien ut lacus dui libero morbi tristique.',
      ),
      subtitleThird:Text(
        "Sit praesent mi, dolor, magna in pellentesque sollicitudin odio sed. Sit nibh aliquam enim ipsum lectus sem fermentum congue velit. Purus habitant odio in morbi aliquet velit pulvinar. Facilisis ut amet interdum pretium. Fames pretium eget orci facilisis mattis est libero facilisis ullamcorper. Est auctor amet egestas risus libero et. Auctor faucibus sit id fringilla vitae. Ac volutpat sodales tristique ut netus turpis."
      )
    ),
  ];

  @override
  List<Object?> get props => [title, subtitleFirst, subtitleSecond];
}
