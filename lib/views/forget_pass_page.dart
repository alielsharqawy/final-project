import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:supmind/helper/componants/messege_box.dart';
import 'package:supmind/views/login_page.dart';
import 'package:supmind/views/verification_page.dart';

import '../utlis/app_style.dart';
import '../widgets/login&sign/custom_button.dart';
import '../widgets/login&sign/custom_text_field.dart';

class ForgetPasswordPage extends StatefulWidget {
  const ForgetPasswordPage({super.key});
  static String id = 'ForgetPassword';

  @override
  State<ForgetPasswordPage> createState() => _ForgetPasswordPageState();
}

class _ForgetPasswordPageState extends State<ForgetPasswordPage> {
  bool showBlur = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: InkWell(
              onTap: () {
                Navigator.pushNamed(context, LoginPage.id);
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
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    'Forgot Password',
                    style: AppStyles.s32,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Enter your Email account to reset\nyour password',
                    textAlign: TextAlign.center,
                    style: AppStyles.s18,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  CustomTextField(text: "**********"),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomButton(
                    text: 'Reset Password',
                    onPressed: () {
                      setState(() {
                        showBlur = true;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
        if (showBlur)
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Container(
                color: Colors.black.withOpacity(0.2),
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, VerificationPage.id);
                    },
                    child: const MessegeBox(
                      iconData: FontAwesomeIcons.envelopeOpenText,
                      message:
                          'We have sent a password recovery code to your email',
                    ),
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
