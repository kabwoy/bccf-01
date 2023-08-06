import 'package:flutter/material.dart';

class WordScreen extends StatelessWidget {
  const WordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("John 4:23"),),
      body: Container(
        child: Column(
          children: [
            Hero(
              tag: "1",
              child: Image.asset("assets/images/p.jpg")
              ),
            const Text("Word" , style: TextStyle(
              fontFamily: 'OpenSans',
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),),
            Container(
              padding: const EdgeInsets.all(25),
              child: const Text(
                "lorem hjusdihyuidfhuhydshfdisjfds kdlfjdjjfgdjklgdflglf;dgkdfkgjdjgjojiortiruitijektjrjetjertjjertjjdfkngkfkjgkjfdkgjkjdfkgjkdfjgjkdfjgkjdfkjgjdfjgkjdfgioutierjjkherjghgrehturhnvdfhdgtjdfnjgjhfjdhgjhdfhgdfnngmvnjjghjrdhtf,nmvdfjg"
              ),
            )
          ],
        ),
      ),
    );
  }
}