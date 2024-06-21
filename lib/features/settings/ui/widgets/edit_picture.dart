import 'package:flutter/material.dart';

class EditPicture extends StatelessWidget {
  final String profileImagePath;
  final String ellipseImagePath;
  final String cameraImagePath;
  final double profileSize;
  final double ellipseSize;
  final double cameraSize;
  final VoidCallback onEllipseTap;
  final VoidCallback onCameraTap;

  const EditPicture({
    required this.profileImagePath,
    required this.ellipseImagePath,
    required this.cameraImagePath,
    required this.profileSize,
    required this.ellipseSize,
    required this.cameraSize,
    required this.onEllipseTap,
    required this.onCameraTap,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        _buildImage(profileImagePath, profileSize),
        Positioned(
          top: profileSize / 2.20,
          right: profileSize / 1.20,
          child: GestureDetector(
            onTap: onEllipseTap,
            child: _buildImage(ellipseImagePath, ellipseSize),
          ),
        ),
        Positioned(
          top: (profileSize - ellipseSize) / 1.5,
          right: profileSize - (ellipseSize * 0.58),
          child: GestureDetector(
            onTap: onCameraTap,
            child: _buildImage(cameraImagePath, cameraSize),
          ),
        ),
      ],
    );
  }

  Widget _buildImage(String imageUrl, double size) {
    return Center(
      child: Image.asset(
        imageUrl,
        width: size,
        height: size,
      ),
    );
  }
}
