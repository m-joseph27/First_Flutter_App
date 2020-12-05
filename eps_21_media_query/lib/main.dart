import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Latihan Media Query'),
      ),

        // to create container depands on device
      // body: Container(
      //   width: MediaQuery.of(context).size.width / 3,
      //   height: MediaQuery.of(context).size.height / 2,
      //   color: Colors.amberAccent,
      // ),

      // give condition using ternary
      body: (MediaQuery.of(context).orientation == Orientation.portrait)
      ?
      Column(
        children: generateLandscape(),
      )
      :
      Row(
        children: generateLandscape(),
      ),
    );
  }

  List<Widget> generateLandscape() {
    return <Widget>[
        Container(color: Colors.blue, width: 100, height: 100,),
        Container(color: Colors.red, width: 100, height: 100,),
        Container(color: Colors.green, width: 100, height: 100,),
      ];
  }
}
