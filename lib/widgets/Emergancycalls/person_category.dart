import 'package:flutter/material.dart';
import 'package:supmind/utlis/app_style.dart';

import '../../../utlis/app_colors.dart';

class PersonCategory extends StatelessWidget {
  const PersonCategory(
      {super.key, required this.personName, required this.personNumber});
  final String personName;
  final String personNumber;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      decoration: BoxDecoration(
        color: AppColors.white,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 3,
            blurRadius: 6,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipOval(
              child: Image.asset(
                'assets/images/rotine.png',
                height: 80,
                width: 80,
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                personName,
                style: AppStyles.s16,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                personNumber,
                style: AppStyles.s14.copyWith(
                  color: AppColors.greyForIcon,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
