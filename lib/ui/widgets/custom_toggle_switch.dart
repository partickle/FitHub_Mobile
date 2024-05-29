import 'package:fithub/constants.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class CustomToggleSwitch extends StatefulWidget {
  final int initialLabelIndex;
  final List<String> labels;
  final ValueNotifier<int> levelNotifier;

  const CustomToggleSwitch({
    super.key,
    required this.initialLabelIndex,
    required this.labels,
    required this.levelNotifier,
  });

  @override
  State<CustomToggleSwitch> createState() => _LevelToggleSwitchState();
}

class _LevelToggleSwitchState extends State<CustomToggleSwitch> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ToggleSwitch(
        minWidth: 112,
        minHeight: 30,
        cornerRadius: 20.0,
        activeBgColor: const [kPrimaryColor],
        activeFgColor: kSecBackgroundColor,
        inactiveBgColor: kSecBackgroundColor,
        inactiveFgColor: Colors.white,
        initialLabelIndex: widget.initialLabelIndex,
        totalSwitches: widget.labels.length,
        labels: widget.labels,
        radiusStyle: true,
        onToggle: (index) {
          widget.levelNotifier.value = index!;
        },
      ),
    );
  }
}
