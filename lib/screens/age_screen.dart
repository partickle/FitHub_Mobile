import 'package:flutter/material.dart';

class AgeScreen extends StatefulWidget {
  const AgeScreen({super.key});

  @override
  State<AgeScreen> createState() => _AgeScreenState();
}

class _AgeScreenState extends State<AgeScreen> {
  int selectedAge = 18; // Default selected age

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1E),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 1.0),
                  child: Text(
                    'How old are you?',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                const Text(
                  'This helps us create your personalized plan',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height:
                      400, // Отрегулируйте высоту в зависимости от вашего макета
                  child: ListWheelScrollView(
                    onSelectedItemChanged: (value) {
                      setState(() {
                        selectedAge = value + 1;
                      });
                    },
                    itemExtent: 100,
                    children: List.generate(100, (index) {
                      final age = index + 1;

                      return GestureDetector(
                        child: Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 24, vertical: 16),
                          margin: const EdgeInsets.symmetric(vertical: 8),
                          decoration: BoxDecoration(
                            color: selectedAge == age
                                ? const Color(0xFFD0FD3E)
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: Text(
                            '$age',
                            style: TextStyle(
                              color: selectedAge == age
                                  ? Colors.black
                                  : Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      );
                    }).toList()
                    
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding:
                  const EdgeInsets.fromLTRB(46, 0, 31, 46), // Отступы от краёв
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // _buildRoundBackButton(Icons.arrow_back, () {
                  //   // Handle back button press
                  // }),
                  SizedBox(
                    width: 120,
                    height: 50,
                    child: FloatingActionButton(
                      onPressed: () {
                        // Handle the "Next" button press with selectedAge value
                      },
                      backgroundColor: const Color(0xFFD0FD3E),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(28), // Скругление кнопки
                      ),
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRoundBackButton(IconData iconData, VoidCallback onPressed) {
    return SizedBox(
      width: 54,
      height: 54,
      child: FloatingActionButton(
        onPressed: onPressed,
        backgroundColor: const Color(0xFF3A3A3C),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(27),
        ),
        child: Icon(iconData, color: Colors.white),
      ),
    );
  }
}
