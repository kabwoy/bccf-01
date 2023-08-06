import 'package:app/src/login.dart';
import 'package:flutter/material.dart';
class NewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("New Page")),
      body: const LoginScreen(),
    );
  }
}
