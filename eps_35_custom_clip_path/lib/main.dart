import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Custom Clipper")),
        body: Center(
            child: ClipPath(
              clipper: MyClipper(),
                          child: Image(
                width: 300,
          image: NetworkImage(
                "https://cdn2.vectorstock.com/i/1000x1000/85/31/full-moon-cartoon-vector-4118531.jpg"),
        ),
            )),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    // to create curve clip ppath
    path.quadraticBezierTo(size.width / 2, size.height * 0.5, size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();

    return path;
    }
  
    @override
    bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
  
}