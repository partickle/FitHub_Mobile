import 'package:fithub/features/settings/ui/components/profile_model.dart';
import 'package:fithub/features/settings/ui/widgets/info_tag.dart';
import 'package:flutter/material.dart';

class ProfileProScreen extends StatefulWidget {
  const ProfileProScreen({Key? key}) : super(key: key);

  @override
  State<ProfileProScreen> createState() => _ProfileProScreenState();
}

class _ProfileProScreenState extends State<ProfileProScreen>
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
    Profile selectedProfile = Profile
        .profilesPro.first;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
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
