import 'package:flutter/material.dart';
import 'package:supmind/utlis/app_colors.dart';

import '../../utlis/app_style.dart';

class MessegeBox extends StatelessWidget {
  const MessegeBox({super.key, required this.iconData, required this.message});
  final IconData iconData;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 382.03,
      height: 223.52,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.25),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                iconData,
                size: 60,
                color: AppColors.primaryColor,
              ),
              Text(
                message,
                textAlign: TextAlign.center,
                style: AppStyles.s18,
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
