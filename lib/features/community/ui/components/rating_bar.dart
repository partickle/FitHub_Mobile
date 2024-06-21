import 'package:flutter/material.dart';

class RatingBar extends StatelessWidget {
  final double rating;
  final Function(double) onRatingUpdate;

  const RatingBar({Key? key, required this.rating, required this.onRatingUpdate}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topLeft,
            children: [
              Container(
                width: 380,
                height: 70,
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    double maxWidth = constraints.maxWidth;
                    double desiredWidth = (rating - 1) / 4 * maxWidth;
                    double width = desiredWidth > maxWidth ? maxWidth : desiredWidth;
                    double textPosition = (rating - 1) / 4 * maxWidth - 10;
                    if (textPosition < 0) {
                      textPosition = 0;
                    } else if (textPosition > maxWidth - 30) {
                      textPosition = maxWidth - 30;
                    }

                    return Stack(
                      children: [
                        Positioned(
                          top: 0,
                          left: textPosition,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 5.0),
                            child: Text(
                              '${rating.toStringAsFixed(1)}',
                              style: const TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 252, 252, 251),
                              ),
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            const SizedBox(
                              height: 30,
                            ),
                            Container(
                              width: maxWidth,
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.grey.shade300,
                              ),
                              child: Stack(
                                children: [
                                  Container(
                                    width: width,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: const Color(0xFFD0FD3E),
                                    ),
                                  ),
                                  const Positioned(
                                    left: 10,
                                    bottom: 10,
                                    child: Text(
                                      'Rating',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Color(0xFF000000),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                ),
              ),
              GestureDetector(
                onHorizontalDragUpdate: (details) {
                  RenderBox box = context.findRenderObject() as RenderBox;
                  double localDx = box.globalToLocal(details.globalPosition).dx;
                  double newRating = 1 + (localDx / 380) * 4;
                  if (newRating >= 1.0 && newRating <= 5.0) {
                    onRatingUpdate(newRating);
                  }
                },
                child: Container(
                  width: 380,
                  height: 70,
                  color: Colors.transparent,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
