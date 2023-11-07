// ignore_for_file: file_names, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../utlis/app_colors.dart';
import '../../utlis/app_style.dart';

class LocationDateCetegory extends StatelessWidget {
  const LocationDateCetegory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: ShapeDecoration(
        color: AppColors.cardColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Container(
              child: Row(
                children: [
                  const Icon(
                    FontAwesomeIcons.locationDot,
                    size: 20,
                  ),
                  Text(
                    ' Mansoura, EGY',
                    style: AppStyles.s14.copyWith(
                      color: AppColors.blackForText,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 20,
            ),
            child: Container(
              child: Row(
                children: [
                  const Icon(
                    FontAwesomeIcons.calendarCheck,
                    size: 20,
                  ),
                  Text(
                    ' Monday, June',
                    style: AppStyles.s14.copyWith(
                      color: AppColors.blackForText,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
