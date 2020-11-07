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
          title: Text("Latihan Column dan Row"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Columns 1"),
            Text("Columns 2"),
            Text("Columns 3"),
            Row(
              children: <Widget>[
                Text("Rows 1"),
                Text("Rows 2"),
                Text("Rows 3")
              ],
            )
          ],
        ),
      ),
    );
  }
}
