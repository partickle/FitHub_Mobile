import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fithub/router/app_router.dart';
import '../components/rating_bar.dart';
import '../widgets/review_text_field.dart';

class WriteReviewScreen extends StatefulWidget {
  @override
  _WriteReviewScreenState createState() => _WriteReviewScreenState();
}

class _WriteReviewScreenState extends State<WriteReviewScreen> {
  double rating = 4.6;
  TextEditingController reviewController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text('Write a Review'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            RatingBar(
              rating: rating,
              onRatingUpdate: (newRating) {
                setState(() {
                  rating = newRating;
                });
              },
            ),
            const SizedBox(height: 16),
            ReviewTextField(controller: reviewController),
            const SizedBox(height: 16),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  AutoRouter.of(context).push(const ComplaintRoute());
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: const Color(0xFFD0FD3E),
                  padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 16),
                  textStyle: const TextStyle(fontSize: 16),
                ),
                child: const Text('Send'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
