import 'package:auto_route/auto_route.dart';
import 'package:fithub/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:fithub/constants.dart';
import 'package:fithub/features/onboarding/widgets/welcome_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

@RoutePage()
class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final PageController _controller = PageController();

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          PageView(
            controller: _controller,
            children: [
              WelcomePage(
                urlImage: 'assets/images/welcome1.jpg',
                upText: 'Meet with sport,',
                downText: 'start your journey',
                isLast: false,
                onPressed:() {},
              ),
              WelcomePage(
                urlImage: 'assets/images/welcome2.png',
                upText: 'Create a workout plan',
                downText: 'to stay fit',
                isLast: false,
                onPressed: () {},
              ),
              WelcomePage(
                urlImage: 'assets/images/welcome3.jpg',
                upText: 'Action is the',
                downText: 'key to all success',
                isLast: true,
                onPressed: () {
                  AutoRouter.of(context).replace(const GenderRoute());
                },
              )
            ],
          ),
          Positioned(
            bottom: 50,
            left: 0,
            right: 0,
            child: Center(
              child: SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect: const ExpandingDotsEffect(
                  activeDotColor: kPrimaryColor,
                  dotHeight: 4,
                  dotWidth: 16,
                  spacing: 10,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            height: MediaQuery.of(context).size.height * 7 / 13,
            child: ClipPath(
              clipper: TrapezoidClipper(),
              child: Container(
                color: kBackgroundColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TrapezoidClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(0, size.height * 0.3);
    path.lineTo(0, size.height * 0.25);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height * 0.3);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}