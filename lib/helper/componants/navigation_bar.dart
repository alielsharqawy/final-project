import 'package:flutter/material.dart';
import 'package:supmind/views/dashbord_page.dart';
import 'package:supmind/views/forget_pass_page.dart';
import 'package:supmind/views/home_page.dart';
import 'package:supmind/views/login_page.dart';
import 'package:supmind/views/reset_password.dart';

class MyBottomNavigationBarApp extends StatefulWidget {
  @override
  _MyBottomNavigationBarAppState createState() =>
      _MyBottomNavigationBarAppState();
}

class _MyBottomNavigationBarAppState extends State<MyBottomNavigationBarApp> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();

  final List<Widget> _screens = [
    HomePage(),
    const DashboardPage(),
    const LoginPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _pageController.animateToPage(index,
          duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _screens,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
