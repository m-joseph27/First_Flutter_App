import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatefulWidget {
  TextEditingController controller = TextEditingController();
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    var controller;
        return MaterialApp(
          home: Scaffold(
            appBar: AppBar(
              title: Text('Latihan Text Field Widget'),),
              body: Container(
                margin: EdgeInsets.all(25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[TextField(
                    // obscureText to make input text like a password ****
                    obscureText: true,
                    // max length to give maximun input
                    maxLength: 50,
                    onChanged: (value) {
                      setState(() {});
                    },
                    controller: controller,
            ),
                Text(controller.text)
            ],),
              )
      ),
    );
  }
}