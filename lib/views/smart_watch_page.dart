import 'package:flutter/material.dart';

class SmartWatchPage extends StatelessWidget {
  const SmartWatchPage({super.key});
  static String id = "SmartWatchPage";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('SmartWatchPage '),
      ),
    );
  }
}
