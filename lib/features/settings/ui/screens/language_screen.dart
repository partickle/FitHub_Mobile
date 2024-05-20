import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({Key? key}) : super(key: key);

  static const routeName = '/language';

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  int _selectedLanguageIndex = 0;

  final List<Map<String, dynamic>> _languages = [
    {'title': 'English', 'enabled': true},
    {'title': 'Russian', 'enabled': false},
  ];

  @override
  void initState() {
    super.initState();
    _loadSettings();
  }

  Future<void> _loadSettings() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _selectedLanguageIndex = prefs.getInt('selectedLanguageIndex') ?? 0;
      for (int i = 0; i < _languages.length; i++) {
        _languages[i]['enabled'] = (i == _selectedLanguageIndex);
      }
    });
  }

  Future<void> _saveSettings() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setInt('selectedLanguageIndex', _selectedLanguageIndex);
  }

  void _handleLanguageSelection(int index) {
    setState(() {
      if (_selectedLanguageIndex == index) {
        return;
      }
      _selectedLanguageIndex = index;

      for (int i = 0; i < _languages.length; i++) {
        _languages[i]['enabled'] = (i == _selectedLanguageIndex);
      }
    });
    _saveSettings();
  }

  List<Widget> _buildMenuItems() {
    List<Widget> items = [];
    for (int i = 0; i < _languages.length; i++) {
      items.add(buildMenuItem(
        _languages[i]['title'],
        _languages[i]['enabled'],
        () => _handleLanguageSelection(i),
      ));
      items.add(buildSeparator());
    }
    return items;
  }

  Widget buildMenuItem(String title, bool selected, VoidCallback onTap) {
    return ListTile(
      title: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: Text(
          title,
          style: GoogleFonts.openSans(
            textStyle: const TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
      ),
      onTap: onTap,
      tileColor: Colors.transparent,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
      trailing: selected
          ? Checkbox(
              value: selected,
              onChanged: (_) => onTap(),
              activeColor: const Color(0xFFCD0FD3E),
              checkColor: Colors.black,
            )
          : null,
    );
  }

  Widget buildSeparator() {
    return Container(
      height: 1,
      color: const Color(0xFF2C2C2E),
      margin: const EdgeInsets.symmetric(horizontal: 30),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Language', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFF1C1C1E),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: buildSeparator(),
          ),
          Column(
            children: _buildMenuItems(),
          ),
        ],
      ),
    );
  }
}
