import 'package:fithub/features/settings/ui/components/privacy.model.dart';
import 'package:flutter/material.dart';

class PrivacyScreen extends StatelessWidget {
  const PrivacyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final privacy = Privacy.policy.first;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1C1C1E),
        leading: IconButton(
          color: Colors.white,
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text(
          'Privacy Policy',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                privacy.title,
                style: const TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                privacy.subtitleFirst.data.toString(), // Используйте data для получения текста из Text
                style: const TextStyle(
                  color: Color(0xFFB5B5B5),
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                privacy.subtitleSecond.data.toString(), // Используйте data для получения текста из Text
                style: const TextStyle(
                  color: Color(0xFFB5B5B5),
                  fontSize: 14,
                ),
              ),
               const SizedBox(height: 20),
               Text(
                privacy.subtitleThird.data.toString(), // Используйте data для получения текста из Text
                style: const TextStyle(
                  color: Color(0xFFB5B5B5),
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
