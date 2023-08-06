import 'package:app/src/models/events_model.dart';
import 'package:app/src/providers/events.dart';
import 'package:app/src/widgets/notification_item.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
    getEvents(){
    final events =  FirebaseFirestore.instance.collection("events").snapshots();
    return events;
  }
  @override
  Widget build(BuildContext context) {
    // final eventContainer = Provider.of<Events>(context);
    // final events = eventContainer.events;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notifications"),
      ),
      body: StreamBuilder(
        stream: getEvents(),
        builder: (context ,  AsyncSnapshot<QuerySnapshot>snapshot) {
          if(snapshot.connectionState == ConnectionState.waiting){
            return const Center(
                child:  CircularProgressIndicator(color: Colors.white,)
            );
          }
          if(snapshot.hasError){
            return Center(
                child:  Text(snapshot.data!.docs[0]['title'])
            );
          }
            return ListView.builder(
                itemCount: snapshot.data!.docs.length,
                itemBuilder: (ctx, index) {
                  print(snapshot.data!.docs[index]['title']);
                  return NotificationItem(
                      title: snapshot.data!.docs[index]['title'],
                      id: snapshot.data!.docs[index]['title'],
                      body: snapshot.data!.docs[index]['content']);
                });


        }
      ),
    );
  }
}
