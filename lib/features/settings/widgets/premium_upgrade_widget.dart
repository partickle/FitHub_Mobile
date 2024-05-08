import 'package:flutter/material.dart';

Widget buildPremiumUpgradeSection(VoidCallback onTap) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: 327,
      height: 83,
      decoration: BoxDecoration(
        color: const Color(0xFF2C2C2E),
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 27,
            height: 16,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/icons/pro.png'),
                fit: BoxFit.contain,
              ),
            ),
          ),
          const SizedBox(width: 10),
          const Expanded(
            child: Text(
              "Upgrade to Premium\nThis subscription is auto-renewable",
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    ),
  );
}
