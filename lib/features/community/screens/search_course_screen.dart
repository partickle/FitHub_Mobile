import 'package:flutter/material.dart';
import '../widgets/filter_button.dart';

class SearchCourseScreen extends StatefulWidget {
  @override
  _SearchCourseScreenState createState() => _SearchCourseScreenState();
}

class _SearchCourseScreenState extends State<SearchCourseScreen> {
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
  String selectedFilter = 'Recent';

  void selecteCategory(String category) {
    setState(() {
      selectedCategory = category;
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
        title:
            const Text('Search course', style: TextStyle(color: Colors.white)),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: <Widget>[
          TextField(
            style: const TextStyle(color: Colors.white),
            decoration: InputDecoration(
              labelText: 'Course name',
              labelStyle: const TextStyle(color: Colors.white),
              floatingLabelBehavior: FloatingLabelBehavior.never,
              fillColor: Colors.grey[800],
              filled: true,
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide: const BorderSide(width: 0.8),
              ),
            ),
          ),
          const Divider(
            color: Color(0xFF2C2C2E),
            thickness: 1,
            height: 32,
          ),
          const SizedBox(height: 8),
          TextField(
            style: const TextStyle(color: Colors.white),
            decoration: InputDecoration(
              labelText: 'User tag',
              labelStyle: const TextStyle(color: Colors.white),
              floatingLabelBehavior: FloatingLabelBehavior.never,
              fillColor: Colors.grey[800],
              filled: true,
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide: const BorderSide(width: 0.8),
              ),
            ),
          ),
          const Divider(
            color: Color(0xFF2C2C2E),
            thickness: 1,
            height: 32,
          ),
          const SizedBox(height: 16),
          const Text('Tags',
              style: TextStyle(color: Colors.white, fontSize: 16)),
          const SizedBox(height: 16),
          Wrap(
            spacing: 8.0,
            children: tags.map((tag) {
              bool isSelected = selectedTags.contains(tag);
              return GestureDetector(
                onTap: () {
                  setState(() {
                    isSelected
                        ? selectedTags.remove(tag)
                        : selectedTags.add(tag);
                  });
                },
                child: Container(
                  margin: const EdgeInsets.only(bottom: 8.0),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12.0, vertical: 8.0),
                  decoration: BoxDecoration(
                    color:
                        isSelected ? const Color(0xFFD0FD3E) : Colors.grey[800],
                    borderRadius: BorderRadius.circular(30.0),
                    border: Border.all(
                      color: isSelected
                          ? const Color(0xFFD0FD3E)
                          : Colors.grey[800]!,
                      width: 0.8,
                    ),
                  ),
                  child: Text(
                    tag,
                    style: TextStyle(
                        color: isSelected ? Colors.black : Colors.white),
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
          const SizedBox(height: 20),
          const Text('Category',
              style: TextStyle(color: Colors.white, fontSize: 16)),
          const SizedBox(height: 21),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
            decoration: BoxDecoration(
              color: Colors.grey[800],
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FilterButton(
                  title: 'Beginner',
                  isSelected: selectedCategory == 'Beginner',
                  onTap: () => selecteCategory('Beginner'),
                ),
                FilterButton(
                  title: 'Intermediate',
                  isSelected: selectedCategory == 'Intermediate',
                  onTap: () => selecteCategory('Intermediate'),
                ),
                FilterButton(
                  title: 'Advance',
                  isSelected: selectedCategory == 'Advance',
                  onTap: () => selecteCategory('Advance'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
