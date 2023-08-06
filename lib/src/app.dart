import 'package:app/src/providers/events.dart';
import 'package:app/src/widgets/TabsScreens.dart';
import 'package:app/src/widgets/notification_detail.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Events(),
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue ,  
          hoverColor: Colors.deepOrange , 
          fontFamily: 'Quicksand',
          scaffoldBackgroundColor: Colors.blue
          
          ), 
        // home: const HomeScreen(),
        routes: {
          "/":(context) => BottomNavigation(),
          "/notification-detail" :(context) => NotificationDetail()
        },
        ),
    );
  }
}
