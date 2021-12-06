import 'package:flutter/material.dart';

class StackBackLogin extends StatelessWidget {
  final StackBack = Container(
    decoration: BoxDecoration(color: Color(0xff30BAD6)),
    child: Text("Welcome to the App \n with login",
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold)),
    alignment: Alignment(0.0, -0.1),
    height: 859.0,
    width: 413.0,
  );
  final IconBack = Column(
    children: [
      Expanded(child: Container()),
      Icon(
        Icons.keyboard_arrow_down,
        color: Colors.white,
        size: 50.0,
      ),
    ],
  );
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[StackBack, IconBack],
    );
  }
}
