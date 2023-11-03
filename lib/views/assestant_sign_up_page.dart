import 'package:flutter/material.dart';
import 'package:supmind/helper/componants/divider.dart';
import 'package:supmind/helper/componants/text_field_componant.dart';
import 'package:supmind/utlis/app_colors.dart';
import 'package:supmind/utlis/app_style.dart';
import 'package:supmind/views/home_page.dart';
import 'package:supmind/views/login_page.dart';
import 'package:supmind/views/pataint_sign_up_page.dart';
import 'package:supmind/widgets/login&sign/loginscreen/custom_button.dart';
import 'package:supmind/widgets/login&sign/loginscreen/custom_circler_container.dart';

class SignUpAssestantPage extends StatelessWidget {
  const SignUpAssestantPage({super.key});
  static String id = 'SignUpAssestantPage';

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
                'Register Account',
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
              const SizedBox(
                height: 25,
              ),
              const SizedBox(
                height: 10,
              ),
              TextFieldComponant(
                headLine: 'Your Name',
                hentText: 'ahmedslman',
              ),
              const SizedBox(
                height: 10,
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
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                text: 'Sign up',
                onPressed: () {
                  Navigator.pushNamed(context, HomePage.id);
                },
              ),
              const SizedBox(
                height: 12,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, SignUpPataintPage.id);
                },
                child: Text(
                  'Sign up as patiant ',
                  style: AppStyles.s14,
                ),
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
                height: 18,
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
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "already have account? ",
                    style: AppStyles.s16.copyWith(
                      color: AppColors.greyForText,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, LoginPage.id);
                    },
                    child: Text(
                      'Login',
                      style: AppStyles.s18.copyWith(
                        color: AppColors.primaryColor,
                        fontSize: 21,
                      ),
                    ),
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
