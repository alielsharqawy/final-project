import 'package:flutter/material.dart';

import '../utlis/app_style.dart';
import '../widgets/dashboard/main/controler_gridview.dart';
import '../widgets/dashboard/main/dashboard_image.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});
  static String id = 'DashboardPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 100,
        title: const Text(
          'Dashboard',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const DashboardImage(),
            const SizedBox(
              height: 25,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Control',
                style: AppStyles.s18.copyWith(
                  color: const Color(0xFF0F0F0F),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const ControlerGridView(),
          ],
        ),
      ),
    );
  }
}
