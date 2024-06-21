import 'package:flutter/material.dart';

class ReviewTextField extends StatelessWidget {
  final TextEditingController controller;

  const ReviewTextField({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      maxLines: 6,
      decoration: InputDecoration(
        hintText: 'Review (Optional)',
        hintStyle: const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        filled: true,
        fillColor: Colors.black12,
      ),
    );
  }
}
