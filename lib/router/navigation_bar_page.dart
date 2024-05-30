import 'package:auto_route/auto_route.dart';
import 'package:fithub/constants.dart';
import 'package:fithub/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
        return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: tabsRouter.activeIndex,
          backgroundColor: kBackgroundColor,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          //fixedColor: kBackgroundColor,
          // selectedItemColor: kBackgroundColor,
          // unselectedItemColor: kBackgroundColor,
          onTap: tabsRouter.setActiveIndex,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/home.svg',
                colorFilter: ColorFilter.mode(tabsRouter.activeIndex == 0 ? Colors.blue : Colors.grey, BlendMode.) 
              ),
              label: ''
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/progress.svg',
                colorFilter: ColorFilter.mode(tabsRouter.activeIndex == 1 ? Colors.blue : Colors.grey, BlendMode.src) 
              ),
              label: ''
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/community.svg',
                colorFilter: ColorFilter.mode(tabsRouter.activeIndex == 2 ? Colors.blue : Colors.grey, BlendMode.src) 
              ),
              label: ''
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/profile.svg',
                colorFilter: ColorFilter.mode(tabsRouter.activeIndex == 3 ? Colors.blue : Colors.grey, BlendMode.src) 
              ),
              label: ''
            ),
          ],
        );
      },
    );
  }
}
