import 'package:flutter/material.dart';

class GenderScreen extends StatefulWidget {
  const GenderScreen({super.key});

  @override
  _GenderScreenState createState() => _GenderScreenState();
}

class _GenderScreenState extends State<GenderScreen> {
  bool isMaleSelected = false;
  bool isFemaleSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1E),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Tell us about yourself!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 12),
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'To give you a better experience we\nneed to know your gender',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 108),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _buildGenderButton(Icons.male, 'Male', isMaleSelected,
                          () {
                        setState(() {
                          isMaleSelected = true;
                          isFemaleSelected = false;
                        });
                        // Обработка нажатия кнопки "Мужской"
                      }),
                      const SizedBox(
                          height: 24), // Adjust spacing between buttons
                      _buildGenderButton(
                          Icons.female, 'Female', isFemaleSelected, () {
                        setState(() {
                          isMaleSelected = false;
                          isFemaleSelected = true;
                        });
                        // Обработка нажатия кнопки "Женский"
                      }),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: !(isMaleSelected || isFemaleSelected)? null: SizedBox(
        width: 120,
        height: 50,
        child: FloatingActionButton(
          onPressed: isMaleSelected || isFemaleSelected ? () {
            // Обработка нажатия кнопки "Далее"
          } : null,
          backgroundColor: isMaleSelected || isFemaleSelected? const Color(0xFFD0FD3E) : Color(0xFF0F0F0F),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28), // Скругление кнопки
          ), // Зелёный цвет всегда
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(padding: EdgeInsets.only(left: 5)),
              Text('Next', style: TextStyle(color: Colors.black)),
              Padding(padding: EdgeInsets.only(left: 8)),
              Icon(Icons.arrow_forward, color: Colors.black),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildGenderButton(IconData iconData, String label, bool isSelected,
      VoidCallback onPressed) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 140,
        height: 140,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isSelected ? const Color(0xFFD0FD3E) : Colors.transparent,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(iconData,
                size: 48, color: isSelected ? Colors.black : Colors.white),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                label,
                style: TextStyle(
                  color: isSelected ? Colors.black : Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
