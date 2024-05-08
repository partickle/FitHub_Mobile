import 'package:fithub/features/settings/components/profile_model.dart';
import 'package:fithub/features/settings/widgets/profile_picture.dart';
import 'package:fithub/features/settings/widgets/repeated_section_widget.dart';
import 'package:flutter/material.dart';



class SettingsScreen extends StatelessWidget {
  final Profile selectedProfile;

  const SettingsScreen({Key? key, required this.selectedProfile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProfilePicture(profile: selectedProfile),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 50.0),
              child: Text(
                selectedProfile.titleProfile,
                style: const TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50.0),
              child: Text(
                selectedProfile.subtitleProfile,
                style: const TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 250.0),
              child: Text(
                selectedProfile.userTagProfile,
                style: const TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(height: 18),
            RepeatedSectionWidget(), 
            const Divider(
              height: 1,
              thickness: 1,
              color: Color.fromRGBO(158, 158, 158, 1),
              indent: 20,
              endIndent: 20,
            ),
            const SizedBox(height: 30),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 100.0),
          child: Positioned(
            child: Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  width: 2,
                  height: 100,
                  color: const Color.fromRGBO(158, 158, 158, 1),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 100,
          right: 50,
          child: Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    'Joined',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      selectedProfile.joinedProfile,
                      style: const TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
