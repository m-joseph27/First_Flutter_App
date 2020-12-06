import 'package:flutter/material.dart';
import 'colorfull_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('custom button'),),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ColorfullButton(Colors.greenAccent, Colors.blueAccent, Icons.adb),
              ColorfullButton(Colors.pinkAccent, Colors.blueAccent, Icons.comment),
              ColorfullButton(Colors.blueAccent, Colors.blueAccent, Icons.computer),
              ColorfullButton(Colors.amberAccent, Colors.blueAccent, Icons.person)
            ],
          ),
        ),
      ),
    );
  }
}