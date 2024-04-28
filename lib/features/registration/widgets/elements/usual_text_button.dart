import 'package:flutter/material.dart';
import 'package:fithub/constants.dart';

class UsualTextButton extends StatefulWidget {
  final String text;
  final bool isSelected;
  final bool isActive;
  final Color mainColor;
  final Color tapColor;
  final VoidCallback onTap;

  const UsualTextButton({
    super.key,
    required this.text,
    required this.isSelected,
    required this.isActive,
    required this.mainColor,
    required this.tapColor,
    required this.onTap
  });

  @override
  State<UsualTextButton> createState() => _UsualTextButtonState();
}

class _UsualTextButtonState extends State<UsualTextButton> {
  late Color _color;

  @override
  void initState() {
    super.initState();
    _color = widget.mainColor;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 3.0,
            color:
              widget.isSelected ? widget.tapColor : Colors.transparent
          ),
        ),
      ),
      child: GestureDetector(
        onTapDown: (_) {
          setState(() {
            _color = widget.isSelected ? widget.mainColor : widget.tapColor;
          });
        },
        onTapUp: (_) {
          setState(() {
            _color = widget.mainColor;
          });
        },
        onTapCancel: () {
          setState(() {
            _color = widget.mainColor;
          });
        },
        onTap: widget.isActive ? widget.onTap : null,
        child: Text(
          widget.text,
          style: registerSwitchStyle.copyWith(color: _color),
        ),
      ),
    );
  }
}