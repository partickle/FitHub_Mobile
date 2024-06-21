import 'package:fithub/features/settings/ui/components/premium_model.dart';
import 'package:fithub/features/settings/ui/widgets/buttons_widget.dart';
import 'package:fithub/features/settings/ui/widgets/subscribe_now.dart';
import 'package:flutter/material.dart';

class BePremium extends StatefulWidget {
  const BePremium({Key? key}) : super(key: key);

  @override
  State<BePremium> createState() => _BePremiumState();
}

class _BePremiumState extends State<BePremium> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1E),
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: 20),
        controller: _scrollController,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                ClipPath(
                  clipper: TrapezoidClipper(),
                  child: Image.asset(
                    Premium.courses[0].imageUrl,
                    width: 700,
                    height: 450,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  left: 32,
                  top: 237,
                  child: Text(
                    Premium.courses[0].title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Positioned(
                  left: 32,
                  top: 282,
                  child: Text(
                    Premium.courses[0].subtitle,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Positioned(
                  left: 32,
                  top: 362,
                  child: Text(
                    Premium.courses[0].description,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const ButtonsWidget(),
            const SizedBox(height: 20),
            const MyWidget(),
          ],
        ),
      ),
    );
  }
}

class TrapezoidClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(size.height, size.width * 0.8);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
