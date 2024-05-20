import 'package:auto_route/auto_route.dart';
import 'package:fithub/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  List<Widget> _buildMenuItems() {
    return [
      buildSeparator(),
      Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: buildMenuItem(
            "Notifications",
            () {
              AutoRouter.of(context).push(const NotificationRoute());
            },
          ),
        ),
      ),
      const SizedBox(height: 10),
      buildSeparator(),
      Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: buildMenuItem(
            "Language",
            () {
              AutoRouter.of(context).push(const LanguageRoute());
            },
          ),
        ),
      ),
      const SizedBox(height: 10),
      buildSeparator(),
      Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: buildMenuItem(
            "Contact Us",
            () {
              AutoRouter.of(context).push(const ContactUsRoute());
            },
          ),
        ),
      ),
      const SizedBox(height: 10),
      buildSeparator(),
    ];
  }

  Widget buildMenuItem(String title, VoidCallback onTap) {
    return ListTile(
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
      trailing: const Icon(
        Icons.keyboard_arrow_right,
        color: Colors.white,
      ),
      onTap: onTap,
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
        title: const Text('Settings', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFF1C1C1E),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: ListView(
          children: _buildMenuItems(),
        ),
      ),
    );
  }
}
