// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:supmind/routes/app_routes.dart';
import 'package:supmind/views/login&signUp/assestant_sign_up_page.dart';
import 'package:supmind/views/dashbord_page.dart';
import 'package:supmind/views/login&signUp/forget_pass_page.dart';
import 'package:supmind/views/home_page.dart';
import 'package:supmind/views/login&signUp/login_page.dart';
import 'package:supmind/views/login&signUp/pataint_sign_up_page.dart';
import 'package:supmind/views/Dachboard/Physicien/physician_page.dart';
import 'package:supmind/views/login&signUp/reset_password.dart';
import 'package:supmind/views/login&signUp/verification_page.dart';

import 'views/navigitionbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: AppRoutes.routes,
      initialRoute: LoginPage.id,
      debugShowCheckedModeBanner: false,
    );
  }
}
