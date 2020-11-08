import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
// Drag able widget with changing color when it put to drag target using dragAble & Dragtarget
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color color1 = Colors.red;
  Color color2 = Colors.teal;
  Color target = Colors.yellow;
  bool isAccepted = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Latihan DragAble'),),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  // ignore: missing_required_param
                  Draggable<Color>(
                    data: color1,
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: color1,
                        shape: StadiumBorder(),
                        elevation: 6,
                      ),),
                    childWhenDragging: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: color2,
                        shape: StadiumBorder(),
                        elevation: 6,
                      ),),
                    feedback: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: color1.withOpacity(0.8),
                        shape: StadiumBorder(),
                        elevation: 6,
                      ),),
                  ),
                  Draggable<Color>(
                    data: color1,
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: color2,
                        shape: StadiumBorder(),
                        elevation: 6,
                      ),),
                    childWhenDragging: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: color2,
                        shape: StadiumBorder(),
                        elevation: 6,
                      ),),
                    feedback: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: color2.withOpacity(0.8),
                        shape: StadiumBorder(),
                        elevation: 6,
                      ),),
                  )
              ],),
              DragTarget <Color>(
                onWillAccept: (value) => true,
                onAccept: (value) {isAccepted = true; target = value;},
                builder: (context, candidates, rejected) {
                  return (isAccepted) ? SizedBox(
                      width: 100,
                      height: 100,
                      child: Material(
                        color: target,
                        shape: StadiumBorder(),
                  ),) : 
                  SizedBox(
                      width: 100,
                      height: 100,
                      child: Material(
                        color: color2,
                        shape: StadiumBorder(),
                      ),);
                },
              )
            ]
          ),
      ),
    );
  }
}