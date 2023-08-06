import 'package:app/src/providers/events.dart';
import 'package:app/src/screens/home_screen.dart';
import 'package:app/src/widgets/contact_us.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:app/src/widgets/notifications.dart';
import 'package:app/src/widgets/services.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});
  @override
  createState() => BottomNotificationState();
}

class BottomNotificationState extends State<BottomNavigation> {
  // var notificationCounter = 2;
  var _currentIndex = 0;
  List<Widget> _children = [
    HomeScreen(),
    ChurchServices(),
    Notifications(),
    ContactUs(),
  ];
  @override
  Widget build(BuildContext context) {
    final notificationCounter =  Provider.of<Events>(context).events.length;
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        backgroundColor: Colors.blue,
        color: Colors.blue.shade200,
        animationDuration: const Duration(milliseconds: 300),
        items: [
          const Icon(
            Icons.home,
            color: Colors.white,
          ),
          const Icon(
            Icons.church_sharp,
            color: Colors.white,
          ),
          Stack(
            children: [
              GestureDetector(
                onTap: (){
                  
                },
                child: const Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
              ),
              notificationCounter != 0
                  ? Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(6)),
                        constraints:
                            const BoxConstraints(minHeight: 14, minWidth: 14),
                        child: Text(
                          "$notificationCounter",
                          style:
                              const TextStyle(color: Colors.white, fontSize: 8),
                          textAlign: TextAlign.center,
                        ),
                      ))
                  : SizedBox()
            ],
          ),
          const Icon(
            Icons.phone,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
