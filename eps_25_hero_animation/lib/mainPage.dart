import 'package:flutter/material.dart';
import 'secondPage.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Latihan Hero Animation',
              style: TextStyle(color: Colors.white))),
      body: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return SecondPage();
          }));
        },
        // to give animation to avatar and dont forget to add tag to the linked page
        child: Hero(
          tag: SecondPage(),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Container(
                width: 100,
                height: 100,
                child: Image(
                    image: NetworkImage(
                        'https://storage.googleapis.com/files.cs-first.com/Code%20Your%20Hero/HOC_Code%20Your%20Hero%20-%20activity%20icon.png'))),
          ),
        ),
      ),
    );
  }
}
