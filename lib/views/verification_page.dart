// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:supmind/utlis/app_colors.dart';
import 'package:supmind/views/forget_pass_page.dart';
import 'package:supmind/views/reset_password.dart';

import '../utlis/app_style.dart';
import '../widgets/login&sign/custom_button.dart';
import '../widgets/login&sign/otp_form.dart';

class VerificationPage extends StatelessWidget {
  const VerificationPage({super.key});
  static String id = 'VerificationPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.pushNamed(context, ForgetPasswordPage.id);
          },
          child: const Padding(
            padding: EdgeInsets.only(top: 25),
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
        ),
        toolbarHeight: 100,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 40,
          vertical: 20,
        ),
        child: Column(
          children: [
            Text(
              'OTP Verification',
              style: AppStyles.s32,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Please check your email to see the verification code',
              textAlign: TextAlign.center,
              style: AppStyles.s18,
            ),
            const SizedBox(
              height: 25,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OtpForm(),
                OtpForm(),
                OtpForm(),
                OtpForm(),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            CustomButton(
              text: 'Vreify Code',
              onPressed: () {
                Navigator.pushNamed(context, ResetPasswordPage.id);
              },
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Resend code in  ',
                  style: AppStyles.s14.copyWith(color: AppColors.greyForText),
                ),
                Text(
                  '00:30',
                  style: AppStyles.s14,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
