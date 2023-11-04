import 'package:flutter/material.dart';

class EmergencyCallPage extends StatelessWidget {
  const EmergencyCallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text("Emergency Call",style: TextStyle(fontSize: 20),),
      ),
    );
  }
}