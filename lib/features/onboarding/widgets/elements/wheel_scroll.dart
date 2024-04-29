import 'package:flutter/material.dart';
import 'package:fithub/constants.dart';

class OnboardingWheelScroll extends StatelessWidget {
  final int initialItem;
  final double itemExtent;
  final double widthBorder;
  final TextStyle textStyle;
  final List<String> list;
  final ValueSetter<int> onSelectedItemChanged;

  const OnboardingWheelScroll({
    super.key,
    required this.initialItem,
    required this.itemExtent,
    required this.widthBorder,
    required this.textStyle,
    required this.list,
    required this.onSelectedItemChanged
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Center(
          child: Container(
            width: widthBorder,
            height: MediaQuery.of(context).size.height * 1.95 * itemExtent / 1000,
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(width: 4.0, color: kPrimaryColor),
                bottom: BorderSide(width: 4.0, color: kPrimaryColor),
              ),
            ),
          )
        ),
        ListWheelScrollView(
          controller: FixedExtentScrollController(initialItem: initialItem),
          itemExtent: itemExtent,
          perspective: 0.005,
          diameterRatio: 1.5,
          squeeze: 1,
          overAndUnderCenterOpacity: 0.4,
          useMagnifier: true,
          magnification: 1.5,
          physics: const FixedExtentScrollPhysics(parent: BouncingScrollPhysics()),
          onSelectedItemChanged: onSelectedItemChanged,
          children: List.generate(list.length, (index) {
            final element = list[index];
            return Center(
              child: Text(
                element,
                style: textStyle
              ),
            );
          }).toList(),
        )
      ]
    );
  }
}