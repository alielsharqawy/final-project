// ignore_for_file: prefer_const_constructors
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:supmind/views/dashbord_page.dart';
import 'emergengy_call.dart';
import 'home_page.dart';
import 'profile_page.dart';

class NavigationBarButton extends StatefulWidget {
  const NavigationBarButton({super.key});
static String id="NavigationBarButton";
  @override
  State<NavigationBarButton> createState() => _NavigationBarButtonState();
}

class _NavigationBarButtonState extends State<NavigationBarButton> {
  // ignore: non_constant_identifier_names
  int page_index = 0;
  final _pageOption = [
    HomePage(),
    DashboardPage(),
    EmergencyCallPage(),
     ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageOption[page_index],
      bottomNavigationBar: ConvexAppBar(
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          TabItem(
            icon: Icons.home_filled,
          ),
          TabItem(
            icon: Icons.contact_emergency,
          ),
          TabItem(
            icon: Icons.settings,
          ),
           TabItem(
            icon: Icons.person,
          ),
        ],
        curve: Curves.easeOutQuint,
        elevation: 5,
        backgroundColor:
            Colors.blue,
        activeColor:
            Colors.red,
        color: Colors.black,
        initialActiveIndex: page_index,
        onTap: (int index) {
          setState(
            () {
              page_index = index;
            },
          );
        },
      ),
    );
  }
}
