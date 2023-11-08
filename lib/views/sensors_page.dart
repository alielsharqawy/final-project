import 'package:flutter/material.dart';

class SensorsPage extends StatelessWidget {
  const SensorsPage({super.key});
  static String id = 'SensorsPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('SensorsPage '),
      ),
    );
  }
}
