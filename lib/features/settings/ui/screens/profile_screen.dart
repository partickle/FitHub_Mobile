import 'package:auto_route/auto_route.dart';
import 'package:fithub/features/settings/ui/components/profile_model.dart';
import 'package:fithub/features/settings/ui/widgets/info_tag.dart';
import 'package:fithub/router/app_router.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Profile selectedProfile =
        Profile.profiles.first; // Выбор первого профиля из списка `profiles`

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
        AutoRouter.of(context).push(const WelcomeRoute());
      }, 
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10.0),
        child: InfoTag(selectedProfile: selectedProfile),
      ),
    );
  }
}
