import 'package:flutter/material.dart';
import 'package:fithub_app/pages/main_page/widgets/profile/menu_item_widget.dart';
import 'package:fithub_app/pages/main_page/widgets/profile/premium_upgrade_widget.dart';

class RepeatedSectionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> items = [
      buildMenuItem("Edit Profile", () {
        // Action on Edit Profile tap
        print("Edit Profile pressed!");
      }),
      buildMenuItem("Privacy Policy", () {
        // Action on Privacy Policy tap
        print("Privacy Policy pressed!");
      }),
      buildMenuItem("Settings", () {
        // Action on Settings tap
        print("Settings pressed!");
      }),
      buildMenuItem("My courses", () {
        // Action on My courses tap
        print("My courses pressed!");
      }),
      buildPremiumUpgradeSection(() {
        // Action on Premium Upgrade tap
        print("Upgrade button pressed!");
      }),
      buildMenuItem("Sign out", () {
        // Action on Sign out tap
        print("Sign out pressed!");
      }),
    ];

    return Column(
      children: List.generate(items.length, (index) {
        Widget item = items[index];
        bool isPremiumUpgradeSection =
            item is GestureDetector &&
            item.child != null &&
            item.child is Container &&
            (item.child as Container).child != null &&
            (item.child as Container).child is Row;

        return Column(
          children: [
            const SizedBox(height: 9),
            const Divider(
              height: 1,
              thickness: 1,
              color: Color.fromRGBO(158, 158, 158, 1),
              indent: 20,
              endIndent: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: item,
                  ),
                  if (!isPremiumUpgradeSection)
                    InkWell(
                      onTap: () {
                        print("Icon tapped! Index: $index");
                      },
                      child: const Icon(Icons.forward, color: Colors.white),
                    ),
                  const SizedBox(width: 5),
                ],
              ),
            ),
          ],
        );
      }),
    );
  }
}
