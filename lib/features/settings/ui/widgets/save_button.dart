import 'package:flutter/material.dart';

class SaveButton extends StatefulWidget {
  const SaveButton({Key? key}) : super(key: key);

  @override
  State<SaveButton> createState() => _SaveButtonState();
}

class _SaveButtonState extends State<SaveButton>
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
          const SizedBox(height: 300),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              fixedSize: const Size(263, 50),
              backgroundColor: const Color(0xFFD0FD3E),
            ), 
            child: const Text('Save',
            style: TextStyle(color: Colors.black,
            fontSize: 19, fontWeight: FontWeight.w400),),
          ),
        ],
      ),
    );
  }
}
