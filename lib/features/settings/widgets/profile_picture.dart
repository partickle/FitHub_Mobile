import 'package:flutter/material.dart';
import 'package:fithub_app/models/profile_model.dart';
import 'package:flutter_svg/svg.dart';

class ProfilePicture extends StatelessWidget {
  final Profile profile;

  const ProfilePicture({Key? key, required this.profile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double imageSize1 = 140;
    double imageSize2 = 100;
    double imageSize3 = 100;

    return Stack(
      alignment: Alignment.center, // Выравнивание по центру стека
      children: [
        _buildImage(profile.userProfileImage, imageSize1), // Основное изображение
        
        _buildSvgPicture(profile.imageProfileUrl, imageSize2), // Второе изображение
      
       // _buildImage(profile.secondImageProfileUrl, imageSize3), // Третье изображение
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
