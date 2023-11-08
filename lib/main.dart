// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:supmind/routes/app_routes.dart';
import 'package:supmind/views/assestant_sign_up_page.dart';
import 'package:supmind/views/dashbord_page.dart';
import 'package:supmind/views/forget_pass_page.dart';
import 'package:supmind/views/home_page.dart';
import 'package:supmind/views/login_page.dart';
import 'package:supmind/views/pataint_sign_up_page.dart';
import 'package:supmind/views/physician_page.dart';
import 'package:supmind/views/reset_password.dart';
import 'package:supmind/views/verification_page.dart';

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
