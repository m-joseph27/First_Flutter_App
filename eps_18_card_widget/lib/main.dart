import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
// Make a Card Widget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amberAccent,
        body: Container(
          margin: EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              buildCard(Icons.account_box, 'Account Box'),
              buildCard(Icons.adb, 'Android')
            ],
          )
        ),
      ),
    );
  }

  Card buildCard(iconData, String text) {
    return Card(
      // elevation use to give shadow
      elevation: 5,
      child: Row(
        children: <Widget>[
          Container(margin: EdgeInsets.all(5), child: Icon(iconData, color: Colors.amberAccent,)),
          Text('Account Box')
        ],
      ),
    );
  }
}