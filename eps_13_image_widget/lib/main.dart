import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
// to insert image into widget using image widget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Image Widget')),
        body: Center(
          child: Container(
            color: Colors.amberAccent,
            width: 200,
            height: 300,
            padding: EdgeInsets.all(20),
            child: Image(
              image: NetworkImage("https://cdn.arstechnica.net/wp-content/uploads/2018/06/7-2-1.jpg"),
              fit: BoxFit.cover,
              repeat: ImageRepeat.noRepeat,
            ),
          )
        ),
      ),
    );
  }
}