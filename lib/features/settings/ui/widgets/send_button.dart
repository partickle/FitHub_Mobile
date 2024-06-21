import 'package:flutter/material.dart';

class SendButton extends StatefulWidget {
  const SendButton({Key? key}) : super(key: key);

  @override
  State<SendButton> createState() => _SendButtonState();
}

class _SendButtonState extends State<SendButton>
    with SingleTickerProviderStateMixin {
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
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              fixedSize: const Size(263, 50),
              backgroundColor: const Color(0xFFD0FD3E),
            ), 
            child: const Text('Send',
            style: TextStyle(color: Colors.black,
            fontSize: 19, fontWeight: FontWeight.w400),),
          ),
        ],
      ),
    );
  }
}
