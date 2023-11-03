import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:supmind/utlis/app_colors.dart';

import '../../utlis/app_style.dart';

class MessegeBox extends StatelessWidget {
  const MessegeBox({super.key});

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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              FontAwesomeIcons.envelopeOpenText,
              size: 60,
              color: AppColors.primaryColor,
            ),
            Text(
              'We have send password recovery code in your email',
              textAlign: TextAlign.center,
              style: AppStyles.s18,
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
