import 'package:flutter/material.dart';
import 'package:supmind/views/appointments_page.dart';
import 'package:supmind/views/location_page.dart';
import 'package:supmind/views/sensors_page.dart';
import 'package:supmind/views/smart_watch_page.dart';

import '../views/assestant_sign_up_page.dart';
import '../views/dashbord_page.dart';
import '../views/forget_pass_page.dart';
import '../views/home_page.dart';
import '../views/login_page.dart';
import '../views/navigitionbar.dart';
import '../views/pataint_sign_up_page.dart';
import '../views/physician_page.dart';
import '../views/reset_password.dart';
import '../views/verification_page.dart';

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
  };
}
