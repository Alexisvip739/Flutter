import 'package:flutter/material.dart';

import 'Floating_Action_Button_green.dart';

class cardImage extends StatelessWidget {
  String PathImage = "assets/img/playa.jpg";
  cardImage(this.PathImage);
  @override
  Widget build(BuildContext context) {
    final Card = Container(
      height: 350.0,
      width: 250,
      margin: EdgeInsets.only(top: 100.0, left: 20.0),
      decoration: BoxDecoration(
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(PathImage)),
          borderRadius: BorderRadius.all(Radius.circular(10)),
          shape: BoxShape.rectangle,
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.blue,
              blurRadius: 25.0,
              offset: Offset(0.0, 0.4),
            )
          ]),
    );
    return Stack(
      alignment: Alignment(0.9, 1.1),
      children: <Widget>[Card, FloatingActionButtonGreen()],
    );
  }
}
