import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int Number = 0;

  void Angka() {
    setState(() {
      Number = Number++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stateful Widget'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                Number.toString(),
                style: TextStyle(fontSize: 10 + Number.toDouble()),
              ),
              RaisedButton(
                child: Text('Tambah Angka'),
                onPressed: Angka,
              )
            ],
          ),
        ),
      ),
    );
  }
}
