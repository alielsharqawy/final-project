import 'package:flutter/material.dart';
import 'package:supmind/utlis/app_style.dart';

import '../../../utlis/app_colors.dart';
import '../../../views/Dachboard/Physician/physician_info.dart';
import 'custom_ratingbar.dart';
import '../../../helper/componants/custom_button.dart';

class DoctorCategory extends StatelessWidget {
  const DoctorCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Dr. Ahmed Lotfy',
                style: AppStyles.s16,
              ),
              Text(
                'Ear, Nose and Throat Surgery Specialist',
                style: AppStyles.s14.copyWith(
                  color: AppColors.greyForIcon,
                ),
              ),
              const Row(
                children: [
                  Icon(
                    Icons.location_pin,
                    color: Colors.red,
                  ),
                  Text(
                    ' In front of the Faculty of Islamic Studies ... ',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomRatingBar(),
                  const SizedBox(
                    width: 60,
                  ),
                  CustomButton(
                    hight: 30,
                    width: 100,
                    color: const Color(0xFF0D6EFD),
                    text: 'Preview',
                    onTap: () {
                      Navigator.pushNamed(context, PhysicianInfoPage.id);
                    },
                    bordrerRadius: 16.51,
                    fontSize: 14,
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
