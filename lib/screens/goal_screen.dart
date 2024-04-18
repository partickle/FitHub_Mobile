import 'package:flutter/material.dart';

class GoalScreen extends StatefulWidget {
  const GoalScreen({Key? key}) : super(key: key);

  @override
  _GoalScreenState createState() => _GoalScreenState();
}

class _GoalScreenState extends State<GoalScreen> {
  String? selectedGoal; // Default selected goal

  final List<String> goals = [
    'Gain Weight',
    'Lose Weight',
    'Get Fitter',
    'Gain More Flexibility',
    'Learn the Basics'
  ];
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
                    'What’s your goal??',
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
                  child: ListView.builder(
                    itemCount: goals.length,
                    itemBuilder: (context, index) {
                      final goal =
                          goals[index]; // Получить значение цели из списка
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedGoal = goal; // Установить выбранную цель
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 24, vertical: 16),
                          margin: const EdgeInsets.symmetric(vertical: 8),
                          decoration: BoxDecoration(
                            color: selectedGoal == goal
                                ? const Color(0xFFD0FD3E)
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: Text(
                            '$goal',
                            style: TextStyle(
                              color: selectedGoal == goal
                                  ? Colors.black
                                  : Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      );
                    },
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
                  _buildRoundBackButton(Icons.arrow_back, () {
                    // Handle back button press
                  }),
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
