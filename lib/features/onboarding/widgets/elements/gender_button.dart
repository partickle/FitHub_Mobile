import 'package:flutter/material.dart';
import 'package:fithub/constants.dart';

class GenderButton extends StatelessWidget {
  final IconData iconData; 
  final String label;
  final bool isSelected;
  final VoidCallback onPressed;

  const GenderButton({
    super.key,
    required this.iconData,
    required this.label,
    required this.isSelected,
    required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 160,
        height: 160,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isSelected ? kPrimaryColor : kSecBackgroundColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(iconData, size: 75, color: isSelected ? kSecTextColor : kTextColor),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                label,
                style: onboardGenderButStyle.copyWith(
                  color: isSelected ? kSecTextColor : kTextColor
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}