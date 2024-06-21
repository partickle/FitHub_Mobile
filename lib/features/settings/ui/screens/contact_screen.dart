import 'package:fithub/features/settings/ui/components/contact_model.dart';
import 'package:fithub/features/settings/ui/widgets/send_button.dart';
import 'package:flutter/material.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  TextEditingController _reviewController = TextEditingController();

  @override
  void dispose() {
    _reviewController.dispose(); 
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final contact = Contact.reviews.first;

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
          'Contact Us',
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
                contact.title,
                style: const TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                contact.subtitle,
                style: const TextStyle(
                  color: Color(0xFFB5B5B5),
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: Container(
                  width: 427,
                  height: 392,
                  decoration: BoxDecoration(
                    color: const Color(0xFF2C2C2E), // Gray background color
                    borderRadius: BorderRadius.circular(20), // Rounded corners
                    border: Border.all(color: const Color(0xFF2C2C2E)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: _reviewController,
                      maxLines: null,
                      style: const TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 16,
                        fontStyle: FontStyle.italic,
                      ),
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Review (Optional)',
                        hintStyle: TextStyle(color: Color(0xFFFFFFFF)),
                      ),
                    ),
                  ),
                ),
              ),
               const SizedBox(height: 40),
              const SendButton(),
            ],
          ),
        ),
      ),
    );
  }
}
