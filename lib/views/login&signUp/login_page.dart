import 'package:flutter/material.dart';
import 'package:supmind/helper/componants/divider.dart';
import 'package:supmind/helper/componants/text_field_componant.dart';
import 'package:supmind/utlis/app_colors.dart';
import 'package:supmind/utlis/app_style.dart';
import 'package:supmind/views/login&signUp/forget_pass_page.dart';
import 'package:supmind/views/login&signUp/pataint_sign_up_page.dart';

import '../../widgets/login&sign/custom_button.dart';
import '../../widgets/login&sign/custom_circler_container.dart';
import '../navigitionbar.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  static String id = 'LoginPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 40,
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
             
              TextFieldComponant(
                headLine: 'Email Address',
                hentText: 'xyz@gmail.com',
              ),
              const SizedBox(
                height: 10,
              ),
              TextFieldComponant(
                headLine: 'Password',
                hentText: '*************',
                iconData: Icons.remove_red_eye_sharp,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    child: Text(
                      'Forget Password ?',
                      style: AppStyles.s14,
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, ForgetPasswordPage.id);
                    },
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
              CustomButton(
                text: 'Login',
                onPressed: () {
                  Navigator.pushNamed(context, NavigationBarButton.id);
                },
              ),
              const SizedBox(
                height: 12,
              ),
              const SizedBox(
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
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomCireclerContainer(
                    imageIcon: 'assets/images/logos_facebook.svg',
                  ),
                  CustomCireclerContainer(
                    imageIcon: 'assets/images/logos_google-gmail.svg',
                  ),
                ],
              ),
              const SizedBox(
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
                  InkWell(
                    child: Text(
                      'Sign Up',
                      style: AppStyles.s18.copyWith(
                        color: AppColors.primaryColor,
                        fontSize: 21,
                      ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, SignUpPataintPage.id);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
