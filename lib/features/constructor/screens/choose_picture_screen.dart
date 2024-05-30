import 'package:flutter/material.dart';

class ChoosePictureScreen extends StatefulWidget {
  @override
  _ChoosePictureScreenState createState() => _ChoosePictureScreenState();
}

class _ChoosePictureScreenState extends State<ChoosePictureScreen> {
  int selectedIndex = 0;

  final List<String> imagePaths = [
    'assets/images/constructor/first_picture.png',
    'assets/images/constructor/second_picture.png',
    'assets/images/constructor/third_picture.png',
    'assets/images/constructor/fourth_picture.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
          },
        ),
        title: const Text('Choose picture', style: TextStyle(color: Colors.white)),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: imagePaths.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  imagePaths[index],
                  fit: BoxFit.cover,
                  height: 200.0,
                  width: double.infinity,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
