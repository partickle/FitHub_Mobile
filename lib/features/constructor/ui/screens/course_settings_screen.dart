import 'package:flutter/material.dart';
import '../widgets/filter_button.dart';

class CourseSettingsScreen extends StatefulWidget {
  @override
  _CourseSettingsScreenState createState() => _CourseSettingsScreenState();
}

class _CourseSettingsScreenState extends State<CourseSettingsScreen> {
  List<String> tags = [
    'Hands',
    'Legs',
    'Quadriceps',
    'Calf muscles',
    'Adductor muscles',
    'Buttocks',
    'Chest'
  ];
  List<String> selectedTags = ['Legs', 'Calf muscles', 'Chest'];
  String selectedCategory = 'Beginner';
  String selectedAccess = 'Private';

  void selectCategory(String category) {
    setState(() {
      selectedCategory = category;
    });
  }

  void selectAccess(String access) {
    setState(() {
      selectedAccess = access;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1E),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1C1C1E),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {},
        ),
        title: const Text('Course settings', style: TextStyle(color: Colors.white)),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: <Widget>[
          const Text('Tags', style: TextStyle(color: Colors.white, fontSize: 16)),
          const SizedBox(height: 16),
          Wrap(
            spacing: 8.0,
            children: tags.map((tag) {
              bool isSelected = selectedTags.contains(tag);
              return GestureDetector(
                onTap: () {
                  setState(() {
                    isSelected ? selectedTags.remove(tag) : selectedTags.add(tag);
                  });
                },
                child: Container(
                  margin: const EdgeInsets.only(bottom: 8.0),
                  padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                  decoration: BoxDecoration(
                    color: isSelected ? const Color(0xFFD0FD3E) : Colors.grey[800],
                    borderRadius: BorderRadius.circular(30.0),
                    border: Border.all(
                      color: isSelected ? const Color(0xFFD0FD3E) : Colors.grey[800]!,
                      width: 0.8,
                    ),
                  ),
                  child: Text(
                    tag,
                    style: TextStyle(color: isSelected ? Colors.black : Colors.white),
                  ),
                ),
              );
            }).toList(),
          ),
          const Divider(
            color: Color(0xFF2C2C2E),
            thickness: 1,
            height: 32,
          ),
          const SizedBox(height: 16),
          const Text('Category', style: TextStyle(color: Colors.white, fontSize: 16)),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
            decoration: BoxDecoration(
              color: Colors.grey[800],
              borderRadius: BorderRadius.circular(50), // Закруглённые углы для овала
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: FilterButton(
                    title: 'Beginner',
                    isSelected: selectedCategory == 'Beginner',
                    onTap: () => selectCategory('Beginner'),
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: FilterButton(
                    title: 'Intermediate',
                    isSelected: selectedCategory == 'Intermediate',
                    onTap: () => selectCategory('Intermediate'),
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: FilterButton(
                    title: 'Advance',
                    isSelected: selectedCategory == 'Advance',
                    onTap: () => selectCategory('Advance'),
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            color: Color(0xFF2C2C2E),
            thickness: 1,
            height: 32,
          ),
          const SizedBox(height: 16),
          const Text('Access', style: TextStyle(color: Colors.white, fontSize: 16)),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
            decoration: BoxDecoration(
              color: Colors.grey[800],
              borderRadius: BorderRadius.circular(50), // Закруглённые углы для овала
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: FilterButton(
                    title: 'Private',
                    isSelected: selectedAccess == 'Private',
                    onTap: () => selectAccess('Private'),
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: FilterButton(
                    title: 'Public',
                    isSelected: selectedAccess == 'Public',
                    onTap: () => selectAccess('Public'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
