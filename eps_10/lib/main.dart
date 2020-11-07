import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
    
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
  // to make a random container with color and size
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("latihan Animated Container"),),
        body: Center(child: GestureDetector(
          onTap: () {
            setState(() {});
          },
            child: AnimatedContainer(
            duration: Duration(seconds: 1),
            width: 50.0 + random.nextInt(101),
            height: 50.0 + random.nextInt(101),
            color: Color.fromARGB(255, random.nextInt(255) , random.nextInt(256), random.nextInt(256)),
          ),
        ),),
      ),
    );
  }
}
