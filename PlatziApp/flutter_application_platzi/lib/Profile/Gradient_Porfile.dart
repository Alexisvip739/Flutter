import 'package:flutter/material.dart';

class GradientProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final String Title = "Profile";
    return Container(
      child: Text(
        Title,
        style: TextStyle(
            color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.w900),
      ),
      alignment: Alignment(-0.9, -0.8),
      height: 430.0,
      margin: EdgeInsets.only(top: 60.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20)),
          boxShadow: [
            BoxShadow(
              color: Colors.blue.withOpacity(0.9),
              spreadRadius: 7,
              blurRadius: 7,
              offset: Offset(9, 1), // changes position of shadow
            ),
          ],
          gradient: LinearGradient(
              colors: [
                Color(0xFF4268D3),
                Color(0xFF584CD1),
              ],
              begin: FractionalOffset(0.2, 0.0),
              end: FractionalOffset(1.0, 0.6),
              stops: [0.0, 0.6],
              tileMode: TileMode.clamp)),
    );
  }
}
