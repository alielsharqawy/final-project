import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../utlis/app_colors.dart';
import '../../utlis/app_style.dart';

class WelcomCategory extends StatelessWidget {
  const WelcomCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
            width: 10,
          ),
          Image.asset('assets/images/Rectangle.png'),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Good morning',
                style: AppStyles.s16.copyWith(
                  color: AppColors.greyForText,
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              Text(
                'Ahmed',
                style: AppStyles.s16,
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 215),
            child: Icon(FontAwesomeIcons.bell),
          ),
          const SizedBox(
            width: 10,
          )
        ],
      ),
    );
  }
}
