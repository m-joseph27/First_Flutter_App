import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// to create custom button using inkwell
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Latihan membuat button'),
          ),
          body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                RaisedButton(
                  color: Colors.yellow,
                  child: Text('Button'),
                  onPressed: () {},
                ),
                Material(
                  elevation: 2,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    width: 150,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                            colors: [Colors.teal, Colors.brown],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter)),
                    child: Material(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {},
                        splashColor: Colors.deepOrange,
                        borderRadius: BorderRadius.circular(20),
                        child: Center(
                            child: Text('My Button',
                                style: TextStyle(
                                    color: Colors.brown,
                                    fontWeight: FontWeight.w600))),
                      ),
                    ),
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
