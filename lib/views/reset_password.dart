import 'package:flutter/material.dart';
import 'package:supmind/helper/componants/text_field_componant.dart';
import 'package:supmind/views/home_page.dart';
import 'package:supmind/views/login_page.dart';

import '../utlis/app_style.dart';
import '../widgets/login&sign/loginscreen/custom_button.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({super.key});
  static String id = 'ResetPasswordPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
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
        child: Column(
          children: [
            Text(
              'Reset password',
              style: AppStyles.s32,
            ),
            const SizedBox(
              height: 20,
            ),
            TextFieldComponant(
              headLine: 'New password',
              hentText: '**********',
            ),
            const SizedBox(
              height: 10,
            ),
            TextFieldComponant(
              headLine: ' Confirm New password',
              hentText: '**********',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomButton(
              text: 'Confirm',
              onPressed: () {
                Navigator.pushNamed(context, HomePage.id);
              },
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
