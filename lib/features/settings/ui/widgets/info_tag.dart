import 'package:fithub/features/settings/ui/components/profile_model.dart';
import 'package:fithub/features/settings/ui/widgets/profile_picture.dart';
import 'package:fithub/features/settings/ui/widgets/repeated_section_widget.dart';
import 'package:flutter/material.dart';

class InfoTag extends StatelessWidget {
  final Profile selectedProfile;

  const InfoTag({Key? key, required this.selectedProfile}) : super(key: key);

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
                  color: Color(0xFFFFFFFF),
                ),
              ),
            ),
            const SizedBox(height: 18),
            RepeatedSectionWidget(
              isProProfile: selectedProfile.isPremiumProfile,
            ),
            const Divider(
              height: 1,
              thickness: 0.1,
              color: Color.fromRGBO(158, 158, 158, 1),
              indent: 20,
              endIndent: 20,
            ),
            const SizedBox(height: 30),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: Positioned(
            child: Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  width: 2,
                  height: 150,
                  color: const Color.fromRGBO(158, 158, 158, 1),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 50,
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
                      color: Color(0xFFFFFFFF),
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
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                  if (selectedProfile.isPremiumProfile)
                    Column(
                      children: [
                        const SizedBox(height: 10),
                        Text(
                          selectedProfile.proMember,
                          style: const TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFFF2424),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          selectedProfile.untilDate,
                          style: const TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          selectedProfile.monthSubscription,
                          style: const TextStyle(
                            fontSize: 13.0,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ],
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
