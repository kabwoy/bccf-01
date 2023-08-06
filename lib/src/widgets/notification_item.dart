import 'package:flutter/material.dart';

class NotificationItem extends StatelessWidget {
  final String title;
  final String body;
  final String id;
  const NotificationItem({super.key, required this.title, required this.body , required this.id});
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(0)),
      child: Card(
        margin: const EdgeInsets.all(6),
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                title: Text(
                  title,
                  style: const TextStyle(
                      fontFamily: 'OpenSans', fontWeight: FontWeight.bold),
                ),
                leading:
                    const Icon(Icons.notifications_active, color: Colors.green),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(body),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pushNamed("/notification-detail", arguments: {'id':id , 'title':title , 'body':body});
                        },
                        child: const Text("View More" , style: TextStyle(fontWeight: FontWeight.bold),)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
