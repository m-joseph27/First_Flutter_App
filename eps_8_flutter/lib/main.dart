import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("latihan text style"),
        ),
        body: Center(
          child: Text(
            "Ini adalah text",
            style: TextStyle(
                fontFamily: "AirBnbCereal",
                fontSize: 30,
                fontStyle: FontStyle.italic,
                decoration: TextDecoration.underline,
                decorationColor: Colors.red,
                decorationThickness: 5,
                decorationStyle: TextDecorationStyle.solid),
          ),
        ),
      ),
    );
  }
}
