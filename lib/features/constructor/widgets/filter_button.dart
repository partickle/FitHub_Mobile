import 'package:flutter/material.dart';

class FilterButton extends StatelessWidget {
  final String title;
  final bool isSelected;
  final VoidCallback onTap;

  FilterButton({required this.title, required this.isSelected, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFFD0FD3E) : Colors.grey[800],
          borderRadius: BorderRadius.circular(50.0),
        ),
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            title,
            style: TextStyle(
              color: isSelected ? Colors.black : Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
