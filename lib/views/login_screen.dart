import 'package:flutter/material.dart';
import 'package:supmind/helper/componants/divider.dart';
import 'package:supmind/helper/componants/text_field_componant.dart';
import 'package:supmind/utlis/app_colors.dart';
import 'package:supmind/utlis/app_style.dart';
import 'package:supmind/widgets/login&sign/loginscreen/custom_button.dart';
import 'package:supmind/widgets/login&sign/loginscreen/custom_circler_container.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 50,
        vertical: 20,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/images/logo.png',
              height: 100,
            ),
            Text(
              'Hello Again!',
              style: AppStyles.s32,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Fill your details or continue with\nsocial media',
              textAlign: TextAlign.center,
              style: AppStyles.s18,
            ),
            SizedBox(
              height: 25,
            ),
            const TextFieldComponant(
              headLine: 'Email Address',
              hentText: 'xyz@gmail.com',
            ),
            SizedBox(
              height: 10,
            ),
            const TextFieldComponant(
              headLine: 'Password',
              hentText: '*************',
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Forget Password ?',
                  style: AppStyles.s14,
                ),
                Text(
                  'Recovery Password',
                  style: AppStyles.s14.copyWith(
                    color: AppColors.greyForText,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomButton(
              text: 'Sign in',
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              'Sign in as carear ',
              style: AppStyles.s14,
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const DividerComponant(),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                  ),
                  child: Text(
                    'OR',
                    style: AppStyles.s18,
                  ),
                ),
                const DividerComponant(),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomCireclerContainer(
                  iconData: Icons.facebook,
                  iconColor: AppColors.primaryColor,
                ),
                CustomCireclerContainer(
                  iconData: Icons.apple,
                ),
                CustomCireclerContainer(
                  iconData: Icons.mail_outline_outlined,
                ),
                CustomCireclerContainer(
                  iconData: Icons.phone_android,
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have account ? ",
                  style: AppStyles.s16.copyWith(
                    color: AppColors.greyForText,
                  ),
                ),
                Text(
                  'Sign Up',
                  style: AppStyles.s18.copyWith(
                    color: AppColors.primaryColor,
                    fontSize: 21,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
