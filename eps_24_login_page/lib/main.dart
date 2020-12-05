import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  // to set the page always landscape
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((value) => runApp(MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // to hie debug banner
      debugShowCheckedModeBanner: false,
    );
  }
}
