import 'package:flutter/material.dart';

class ChurchServices extends StatelessWidget {
  const ChurchServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Our Services"),),
      body: const Center(
        child: Text("Services"),
      ),
    );
  }
}
