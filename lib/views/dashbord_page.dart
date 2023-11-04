import 'package:flutter/material.dart';
import 'package:supmind/widgets/dashboard/main/contorler_card.dart';
import 'package:supmind/widgets/dashboard/main/controler_gridview.dart';

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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              DashboardImage(),
              ControlGridView(),
            ],
          ),
        ),
      ),
    );
  }
}
