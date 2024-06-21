import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  static const routeName = '/notifications';

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  bool _workoutRemindersEnabled = false;
  bool _programNotificationsEnabled = false;

  @override
  void initState() {
    super.initState();
    _loadSettings();
  }

  Future<void> _loadSettings() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _workoutRemindersEnabled = prefs.getBool('workoutRemindersEnabled') ?? false;
      _programNotificationsEnabled = prefs.getBool('programNotificationsEnabled') ?? false;
    });
  }

  Future<void> _saveSettings() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool('workoutRemindersEnabled', _workoutRemindersEnabled);
    prefs.setBool('programNotificationsEnabled', _programNotificationsEnabled);
  }

  @override
  void dispose() {
    _saveSettings();
    super.dispose();
  }

  List<Widget> _buildMenuItems() {
    return [
      buildSeparator(),
      buildMenuItem("Workout Reminders", _workoutRemindersEnabled, (value) {
        setState(() {
          _workoutRemindersEnabled = value;
        });
      }),
      const SizedBox(height: 10),
      buildSeparator(),
      buildMenuItem("Program Notifications", _programNotificationsEnabled, (value) {
        setState(() {
          _programNotificationsEnabled = value;
        });
      }),
      const SizedBox(height: 10),
      buildSeparator(),
    ];
  }

  Widget buildMenuItem(String title, bool value, ValueChanged<bool> onChanged) {
    return SwitchListTile(
      title: Text(
        title,
        style: GoogleFonts.openSans(
          textStyle: const TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
      value: value,
      onChanged: onChanged,
      activeColor: Colors.black,
      inactiveThumbColor: Colors.white,
      activeTrackColor: const Color(0xFFD0FD3E),
      inactiveTrackColor: const Color(0xFF2C2C2E).withOpacity(0.5),
    );
  }

  Widget buildSeparator() {
    return Container(
      height: 1,
      color: const Color(0xFF2C2C2E),
      margin: const EdgeInsets.symmetric(horizontal: 15),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFF1C1C1E),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: ListView(
              children: _buildMenuItems(),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 20,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.center,
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: GoogleFonts.openSans(
                    textStyle: const TextStyle(
                      fontSize: 14.0,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                  children: const [
                    TextSpan(text: 'You can manage your app notification\n permissions in your '),
                    TextSpan(
                      text: 'Phone Settings',
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
