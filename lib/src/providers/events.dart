import 'dart:convert';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:app/src/models/events_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Events with ChangeNotifier {
  List<Event> _events = [];

  List<Event> get events {
    return _events;
  }

  void fetchEvents() async {
    CollectionReference events =
        FirebaseFirestore.instance.collection('events');
    // final eventsResult = await events.get();
    // print(eventsResult.docs);
  }
}
