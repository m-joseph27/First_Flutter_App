import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // to hide debug banner on righttop side
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          // give custom height to the appbar
          preferredSize: Size.fromHeight(200),
          child: AppBar(
            backgroundColor: Colors.amberAccent,
            flexibleSpace: Positioned(
              bottom: 0,
              right: 0,
                child: Container(
                  margin: EdgeInsets.all(20),
                  child: Text('Custom AppBar',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w600)),
                )),
          ),
        ),
      ),
    );
  }
}
