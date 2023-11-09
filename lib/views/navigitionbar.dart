// ignore_for_file: prefer_const_constructors, non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:supmind/utlis/app_colors.dart';
import 'package:supmind/views/dashbord_page.dart';
import 'Emergncy_Calls/emergengy_call.dart';
import 'home_page.dart';
import 'profile_page.dart';

int pageIndex = 0;

class NavigationBarButton extends StatefulWidget {
  const NavigationBarButton({
    super.key,
  });
  static String id = "NavigationBarButton";
  @override
  State<NavigationBarButton> createState() => _NavigationBarButtonState();
}

class _NavigationBarButtonState extends State<NavigationBarButton> {
  // int pageIndex = 0;
  final pageOption = [
    HomePage(),
    DashboardPage(),
    EmergencyCallPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageOption[pageIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.house),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.dashboard_customize),
              label: 'Dashbord',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.phone),
              label: 'Calls',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            )
          ],
          backgroundColor: Colors.white,
          selectedItemColor: AppColors.primaryColor,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          iconSize: 33,
          currentIndex: pageIndex,
          onTap: (int index) {
            setState(
              () {
                pageIndex = index;
              },
            );
          },
        ),
      ),
    );
  }
}
