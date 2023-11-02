import 'package:flutter/material.dart';
import 'package:supmind/utlis/app_colors.dart';

class CustomCireclerContainer extends StatelessWidget {
  CustomCireclerContainer({super.key, required this.iconData, this.iconColor});
  IconData iconData;
  Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: AppColors.primaryColor, width: 2),
        ),
        child: Icon(
          iconData,
          color: iconColor,
          size: 30,
        ),
      ),
    );
  }
}
