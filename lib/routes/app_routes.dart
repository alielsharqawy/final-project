import 'package:flutter/material.dart';
import 'package:supmind/views/Dachboard/appointments_page.dart';
import 'package:supmind/views/Dachboard/location_page.dart';
import 'package:supmind/views/Dachboard/sensors_page.dart';
import 'package:supmind/views/Dachboard/smart_watch_page.dart';

import '../views/Emergncy_Calls/add_call.dart';
import '../views/login&signUp/assestant_sign_up_page.dart';
import '../views/dashbord_page.dart';
import '../views/login&signUp/forget_pass_page.dart';
import '../views/home_page.dart';
import '../views/login&signUp/login_page.dart';
import '../views/navigitionbar.dart';
import '../views/login&signUp/pataint_sign_up_page.dart';
import '../views/Dachboard/Physicien/physician_form.dart';
import '../views/Dachboard/Physicien/physician_info.dart';
import '../views/Dachboard/Physicien/physician_page.dart';
import '../views/login&signUp/reset_password.dart';
import '../views/login&signUp/verification_page.dart';

class AppRoutes {
  static final Map<String, Widget Function(BuildContext)> routes = {
    LoginPage.id: (context) => const LoginPage(),
    SignUpPataintPage.id: (context) => const SignUpPataintPage(),
    SignUpAssestantPage.id: (context) => const SignUpAssestantPage(),
    ForgetPasswordPage.id: (context) => const ForgetPasswordPage(),
    VerificationPage.id: (context) => const VerificationPage(),
    ResetPasswordPage.id: (context) => const ResetPasswordPage(),
    DashboardPage.id: (context) => const DashboardPage(),
    HomePage.id: (context) => const HomePage(),
    NavigationBarButton.id: (context) => const NavigationBarButton(),
    PhysicianPage.id: (context) => const PhysicianPage(),
    LocationPage.id: (context) => const LocationPage(),
    AppointmentsPage.id: (context) => const AppointmentsPage(),
    SmartWatchPage.id: (context) => const SmartWatchPage(),
    SensorsPage.id: (context) => const SensorsPage(),
    PhysicianFormPage.id: (context) => const PhysicianFormPage(),
    PhysicianInfoPage.id: (context) => const PhysicianInfoPage(),
    AddCallPage.id: (context) => const AddCallPage(),
  };
}
