import 'package:flutter/material.dart';

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
