import 'package:auto_route/auto_route.dart';
import 'package:fithub/features/settings/ui/widgets/menu_item_widget.dart';
import 'package:fithub/features/settings/ui/widgets/premium_upgrade_widget.dart';
import 'package:fithub/router/app_router.dart';
import 'package:flutter/material.dart';

class RepeatedSectionWidget extends StatelessWidget {
  final bool isProProfile;

  RepeatedSectionWidget({required this.isProProfile});

  @override
  Widget build(BuildContext context) {
    List<Widget> items = [
      buildMenuItem("Edit Profile", () {
        print("Edit Profile pressed!");
      }),
      buildMenuItem("Privacy Policy", () {
        print("Privacy Policy pressed!");
      }),
      buildMenuItem("Settings", () {
        AutoRouter.of(context).push(const SettingsRoute());
      }),
      buildMenuItem("My courses", () {
        print("My courses pressed!");
      }),
      if (!isProProfile) // Отобразить только если не профиль Pro
        buildPremiumUpgradeSection(() {
          AutoRouter.of(context).push(const PremiumRoute());
        }),
      buildMenuItem("Sign out", () {
        print("Sign out pressed!");
      }),
    ];

    return Column(
      children: List.generate(items.length, (index) {
        Widget item = items[index];
        bool isPremiumUpgradeSection = item is GestureDetector &&
            item.child != null &&
            item.child is Container &&
            (item.child as Container).child != null &&
            (item.child as Container).child is Row;

        return Column(
          children: [
            const SizedBox(height: 9),
            const Divider(
              height: 1,
              thickness: 0.1,
              color: Color(0xFFFFFFFF),
              indent: 20,
              endIndent: 20,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: item,
                  ),
                  if (!isPremiumUpgradeSection || !isProProfile)
                    InkWell(
                      onTap: () {
                        print("Icon tapped! Index: $index");
                      },
                      child: const Icon(Icons.keyboard_arrow_right,
                          color: Colors.white),
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
