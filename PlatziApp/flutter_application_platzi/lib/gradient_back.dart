import 'package:flutter/material.dart';

class GradientBack extends StatelessWidget {
  String title = 'Popular';
  GradientBack(this.title);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Text(
        title,
        style: TextStyle(
            color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold),
      ),
      alignment: Alignment(-0.9, -0.9),
      margin: EdgeInsets.only(top: 50.0),
      height: 290.0,
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
