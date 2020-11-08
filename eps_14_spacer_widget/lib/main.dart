import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
// to set space between widget using spacer
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Spacer Widget'),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(width: 80, height: 80, color: Colors.blueAccent),
              Spacer(flex: 1,),
              Container(width: 80, height: 80, color: Colors.yellowAccent),
              Spacer(flex: 2,),
              Container(width: 80, height: 80, color: Colors.redAccent),
              Spacer(flex: 3,)
            ],
          )
        ),
      ),
    );
  }
}