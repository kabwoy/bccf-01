import 'package:flutter/material.dart';
import '../screens/new_screen.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
        shadowColor: Colors.grey,
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const ListTile(
                leading: Icon(Icons.access_time_rounded),
                title: Text("Prayer Function" , style: TextStyle(fontFamily: 'OpenSans' , fontSize: 18 , fontWeight: FontWeight.bold),),
                subtitle: Text("At 4pm"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 10),
                    child: TextButton(
                        onPressed: () => print("hello"),
                        child: const Text("Mark as read")),
                  ),
                  TextButton(
                      onPressed: () => {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => NewPage()))
                          },
                      child: const Text("Dismiss"))
                ],
              )
            ],
          ),
        ));
  }
}


