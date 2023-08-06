import 'package:flutter/material.dart';

class NotificationDetail extends StatelessWidget {
  const NotificationDetail({super.key});
  @override
  Widget build(BuildContext context) {
    final Map<String , dynamic> routeArgs = ModalRoute.of(context)!.settings.arguments as Map<String , dynamic>;
    final title = routeArgs['title'];
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: const Center(
        child: Text("Notification"),
      ),
    );
  }
}
