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
          title: Text('Aplikasi hello world'),
        ),
        body: Center(
            child: Container(
                color: Colors.lightGreen,
                width: 150,
                height: 50,
                child: Text(
                  'project flutter pertama saya, mobile programming',
                  style: TextStyle(
                      color: Colors.black,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold),
                  maxLines: 2,
                  textAlign: TextAlign.center,
                ))),
      ),
    );
  }
}
