import 'package:auto_route/auto_route.dart';
import 'package:fithub/res/constants/constants.dart';
import 'package:fithub/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:fithub/res/custom_icons.dart';

@RoutePage()
class NavigationBarPage extends StatelessWidget {
  const NavigationBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        HomeRoute(),
        ProgressRoute(),
        CommunityRoute(),
        ProfileRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return Container(
          decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(
                width: 1.0,
                color: kSecBackgroundColor
              ),
            ),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: tabsRouter.activeIndex,
            backgroundColor: kBackgroundColor,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedItemColor: Colors.white,
            unselectedItemColor: kThirdBackgroundColor,
            onTap: tabsRouter.setActiveIndex,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(CustomIcons.home),
                label: ''
              ),
              BottomNavigationBarItem(
                icon: Icon(CustomIcons.equalizer, size: 30),
                label: ''
              ),
              BottomNavigationBarItem(
                icon: Icon(CustomIcons.group, size: 30),
                label: ''
              ),
              BottomNavigationBarItem(
                icon: Icon(CustomIcons.person, size: 30),
                label: ''
              ),
            ],
          ),
        );
      },
    );
  }
}
