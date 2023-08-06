import 'package:app/src/providers/events.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widgets/NotificationCard.dart';
import '../widgets/WordOfDay.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    Future.delayed(Duration.zero).then(
      (_)  => {
         Provider.of<Events>(context , listen: false).fetchEvents()

      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BCCF"),
        actions: [
          Row(
            children: [
              const Text("Jane"),
              Container(
                child: IconButton(
                  icon: Icon(Icons.person),
                  onPressed: () {},
                ),
                margin: const EdgeInsets.only(right: 10),
              ),
            ],
          )
        ],
      ),
      drawer: const Drawer(),
      body: Container(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              const Text(
                "Latest Notification",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w900),
              ),
              const CardWidget(),
              Container(
                margin: const EdgeInsets.all(10),
              ),
              const Text(
                "Word Of The Day ",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w900),
              ),
              const WordDay()
            ],
          )),
    );
  }
}
