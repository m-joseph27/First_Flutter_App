import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
// make a widget stack to each other
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('latihan Stack & Align'),
        ),
        body: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Flexible(
                  flex: 1,
                  child: Row(
                    children: <Widget>[
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.white,
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.black12,
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Row(
                    children: <Widget>[
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.red,
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.black12,
                        ),
                      ),
                    ],
                  ),
                ),
              ]
            ),
            ListView(
              children: <Widget> [
                Column(children: <Widget>[
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    'text yang ada di tengah dari stack',
                    style: TextStyle(fontSize:20)),
                  ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    'text yang ada di tengah dari stack',
                    style: TextStyle(fontSize:20)),
                  ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    'text yang ada di tengah dari stack',
                    style: TextStyle(fontSize:20)),
                  ),
                ],)
              ],
            ),
            Align(
                  alignment: Alignment.bottomCenter,
                  child: RaisedButton(
                child: Text('My Button'),
                color: Colors.yellowAccent,
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}