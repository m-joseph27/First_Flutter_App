import 'package:flutter/material.dart';
import 'dart:math';

// ignore: must_be_immutable
class ColorfullButton extends StatefulWidget {
  Color mainColor, secondColor;
  IconData iconData;
  @override
  _ColorfullButtonState createState() =>
      _ColorfullButtonState(mainColor, secondColor, iconData);

  ColorfullButton(this.mainColor, this.secondColor, this.iconData);
}

class _ColorfullButtonState extends State<ColorfullButton> {
  bool isPressed = false;
  Color mainColor, secondColor;
  IconData iconData;

  _ColorfullButtonState(this.mainColor, this.secondColor, this.iconData);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: pi / 4,
      child: GestureDetector(
        // onDoubleTapDown use for change color when it tapped
        onTapDown: (details) {
          setState(() {
            isPressed = true;
          });
        },
        // onTapUp use when the button tapped and up
        onTapUp: (details) {
          setState(() {
            isPressed = true;
          });
        },
        // when button cancel to tap
        onTapCancel: () {
          setState(() {
            isPressed = true;
          });
        },
        child: Material(
          borderRadius: BorderRadius.circular(15),
          // elevation use to give shadow
          elevation: (isPressed) ? 5 : 10,
          // shadow color for give the shadow color and follow it and depens on the condition color
          shadowColor: (isPressed) ? secondColor : mainColor,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Stack(
              children: [
                SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    borderRadius: BorderRadius.circular(15),
                    // condition when button isn't tapped button color is maincolor when button tapped change to second color
                    color: (isPressed) ? secondColor : mainColor,
                    child: Transform.rotate(
                      angle: -pi / 4,
                      child: Icon(
                        iconData,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(30, 30),
                  child: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.white.withOpacity(0.5))),
                ),
                Transform.translate(
                  offset: Offset(-30, 30),
                  child: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.white.withOpacity(0.5))),
                ),
                Transform.translate(
                  offset: Offset(-30, -30),
                  child: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.white.withOpacity(0.5))),
                ),
                Transform.translate(
                  offset: Offset(30, -30),
                  child: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.white.withOpacity(0.5))),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
