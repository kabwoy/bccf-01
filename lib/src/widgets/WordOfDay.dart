import 'package:app/src/screens/word_of_day_screen.dart';
import 'package:flutter/material.dart';

class WordDay extends StatefulWidget {
  const WordDay({super.key});

  @override
  State<WordDay> createState() => _WordDayState();
}

class _WordDayState extends State<WordDay> with TickerProviderStateMixin {
  Color _color = Colors.white;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(seconds: 5),
      child: GestureDetector(
        onTap: () {
          setState(() {
            _color = Colors.amber;
          });
        },
        child: GestureDetector(
          onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (_) => const WordScreen())),
          child: Card(
            elevation: 5,
            shadowColor: Colors.grey,
            child: Column(
              children: [
                Hero(
                  tag: "1",
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(8) , topRight: Radius.circular(8)),
                    child: Image.asset(
                      "assets/images/p.jpg",
                      fit: BoxFit.cover,
                      width: 400,
                     
                    ),
                  ),
                ),
                const ListTile(
                  title: Text(
                    "Word of the day",
                    style: TextStyle(
                        fontFamily: 'OpenSans', fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text("John 4:23...."),
                  leading: Icon(Icons.book),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
