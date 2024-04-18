import 'package:fithub/screens/gender_screen.dart';
import 'package:flutter/material.dart';
import 'package:fithub/constants.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final PageController _controller = PageController();

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  Widget buildPage({
    required String urlImage,
    required String upText,
    required String downText,
    required bool isLast
  }) => 
      Column(
        children: <Widget>[
          Image.asset(
            urlImage,
            height: MediaQuery.of(context).size.height * 0.6,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Container(
            padding: const EdgeInsets.only(top: 40),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    upText,
                    style: welcomeStyleUp,
                  ),
                  Text(
                    downText,
                    style: welcomeStyleDown,
                  ),
                  if (isLast) Padding(
                    padding: const EdgeInsets.only(top: 40, bottom: 0, ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.only(left: 20),
                        fixedSize: const Size(180, 50),
                        backgroundColor: kPrimaryColor,
                        foregroundColor: kBackgroundColor
                      ).copyWith(
                        overlayColor: MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                            if (states.contains(MaterialState.pressed) || states.contains(MaterialState.focused)) {
                              return kPressedColor;
                            }
                            return kPrimaryColor;
                          })),
                      onPressed: () async {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => const GenderScreen()),
                        );
                      },
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Start Now',
                            style: welcomeStyleButton,
                          ),
                          Icon(Icons.arrow_right, size: 33)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          PageView(
            controller: _controller,
            children: [
              buildPage(
                urlImage: 'assets/images/welcome1.jpg',
                upText: 'Meet with sport,',
                downText: 'start your journey',
                isLast: false
              ),
              buildPage(
                urlImage: 'assets/images/welcome2.png',
                upText: 'Create a workout plan',
                downText: 'to stay fit',
                isLast: false
              ),
              buildPage(
                urlImage: 'assets/images/welcome3.jpg',
                upText: 'Action is the',
                downText: 'key to all success',
                isLast: true
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