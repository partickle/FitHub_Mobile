import 'package:fithub/features/settings/ui/components/profile_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:math' as math;


class ProfilePicture extends StatelessWidget {
  final Profile profile;

  const ProfilePicture({Key? key, required this.profile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double imageSize1 = 140;
    double imageSize2 = 100;
    double imageSize3 = 70;

    bool isProProfile = profile.isPremiumProfile;

    return Stack(
      alignment: Alignment.center,
      children: [
        _buildImage(profile.userProfileImage, imageSize1),
        _buildSvgPicture(profile.imageProfileUrl, imageSize2),
        if (isProProfile)
          _buildSvgPicture(profile.proImageProfileUrl, imageSize2),
          
        if (isProProfile)
        Positioned(
          top: imageSize1 / 2 * math.sin(math.pi / 2),
          left: imageSize1 / 2 * math.cos(math.pi / 32),
          child: _buildImage(profile.urlProfileImage, imageSize3),
        ),
      ],
    );
  }

  Widget _buildImage(String imageUrl, double size) {
    return Image.asset(
      imageUrl,
      width: size,
      height: size,
    );
  }

  Widget _buildSvgPicture(String imageUrl, double size) {
    return SvgPicture.asset(
      imageUrl,
      width: size,
      height: size,
    );
  }
}