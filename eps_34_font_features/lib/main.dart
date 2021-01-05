import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// Font Features Flutter
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("flutter font features")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("example 01 (tanpa font features)", style: TextStyle(fontSize: 20),),
              // to make UpperCase
              Text("example 02 (small caps)", style: TextStyle(fontSize: 20, fontFeatures: [FontFeature.enable('smcp')])),
              Text("example 1/2", style: TextStyle(fontFeatures: [FontFeature.enable('frac')])),
              Text("example Cardo 19 (Tanpa Apapun)", style: TextStyle(fontSize: 20)),
              Text("example Cardo 19", style: TextStyle(fontFeatures: [FontFeature.oldstyleFigures()])),
              Text("example stylisticSet", style: TextStyle(fontFeatures: [FontFeature.stylisticSet(20)]))
            ],)
        ),
      ),
    );
  }
}
