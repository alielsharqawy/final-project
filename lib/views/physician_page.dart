import 'package:flutter/material.dart';

class PhysicianPage extends StatelessWidget {
  const PhysicianPage({super.key});
  static String id = 'PhysicianPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text('PhysicianPage '),
      ),
    );
  }
}
