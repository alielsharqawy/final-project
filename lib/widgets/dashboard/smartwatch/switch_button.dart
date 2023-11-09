import 'package:flutter/material.dart';
import 'package:supmind/utlis/app_colors.dart';

class SwitchButton extends StatefulWidget {
  const SwitchButton({super.key});

  @override
  State<SwitchButton> createState() => _SwitchButtonState();
}

bool isSwitched = false;

class _SwitchButtonState extends State<SwitchButton> {
  @override
  Widget build(BuildContext context) {
    return Switch(
      activeColor: Colors.white,
      activeTrackColor: AppColors.primaryColor,
      value: isSwitched,
      onChanged: (value) {
        setState(() {
          isSwitched = value;
        });
      },
    );
  }
}
