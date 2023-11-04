// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:supmind/views/assestant_sign_up_page.dart';
import 'package:supmind/views/dashbord_page.dart';
import 'package:supmind/views/forget_pass_page.dart';
import 'package:supmind/views/home_page.dart';
import 'package:supmind/views/login_page.dart';
import 'package:supmind/views/pataint_sign_up_page.dart';
import 'package:supmind/views/reset_password.dart';
import 'package:supmind/views/verification_page.dart';

import 'views/navigitionbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        LoginPage.id: (context) => const LoginPage(),
        SignUpPataintPage.id: (context) => const SignUpPataintPage(),
        SignUpAssestantPage.id: (context) => const SignUpAssestantPage(),
        ForgetPasswordPage.id: (context) => const ForgetPasswordPage(),
        VerificationPage.id: (context) => const VerificationPage(),
        ResetPasswordPage.id: (context) => const ResetPasswordPage(),
        DashboardPage.id: (context) => const DashboardPage(),
        HomePage.id: (context) => HomePage(),
        NavigationBarButton.id: (context) => const NavigationBarButton(),
      },
      initialRoute: NavigationBarButton.id,
      debugShowCheckedModeBanner: false,
     
    );
  }
}
