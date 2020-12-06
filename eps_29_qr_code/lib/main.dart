import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Center(
              child: QrImage(
        // the version of QR code
        version: 6,
        backgroundColor: Colors.blue[50],
        // the color of QR code
        foregroundColor: Colors.grey,
        errorCorrectionLevel: QrErrorCorrectLevel.M,
        padding: EdgeInsets.all(30),
        // the size of the QR code
        size: 300,
        // the data on the QR code e.g linked to the web
        data: 'https://github.com/m-joseph27',
      ))),
    );
  }
}
