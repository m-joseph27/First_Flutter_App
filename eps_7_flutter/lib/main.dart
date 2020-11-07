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
  String message = 'ini adalah teks';

  void TekanTombol() {
    setState(() {
      message = ' tombol clicked!!';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("annonimous method"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Text"),
              RaisedButton(
                child: Text("click here"),
                onPressed: TekanTombol,
              )
            ],
          ),
        ),
      ),
    );
  }
}
