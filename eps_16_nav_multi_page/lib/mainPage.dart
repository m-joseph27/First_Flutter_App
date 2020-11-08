import 'package:eps_16_nav_multi_page/secondPage.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Page'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Go to Second Page'),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return SecondPage();
            }));
          },  
        ),
      ),
    );
  }
}