import 'package:flutter/material.dart';
import 'package:supmind/utlis/app_colors.dart';
import 'package:supmind/utlis/app_style.dart';

class CheckBoxRoutine extends StatefulWidget {
  CheckBoxRoutine({super.key});

  @override
  State<CheckBoxRoutine> createState() => _CheckBoxRoutineState();
}

class _CheckBoxRoutineState extends State<CheckBoxRoutine> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: isChecked,
          activeColor: Colors.black,
          onChanged: (newBool) {
            setState(
              () {
                isChecked = newBool;
              },
            );
          },
        ),
        Text(
          'Simply dummy text of the printing',
          style: AppStyles.s18.copyWith(
            color: AppColors.blackForText,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
