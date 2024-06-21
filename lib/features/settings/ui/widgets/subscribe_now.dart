import 'package:auto_route/auto_route.dart';
import 'package:fithub/res/constants/constants.dart';
import 'package:fithub/router/app_router.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

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
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const SizedBox(height: 50),
          ElevatedButton(
            onPressed: () {
              // AutoRouter.of(context).push(const ProProfileRoute());
            },
            style: ElevatedButton.styleFrom(
              fixedSize: const Size(263, 50),
              backgroundColor: kPrimaryColor,
            ), 
            child: Text(
              'Subscribe Now',
              style: onboardNextButStyle,
            ),
          ),
        ],
      ),
    );
  }
}
