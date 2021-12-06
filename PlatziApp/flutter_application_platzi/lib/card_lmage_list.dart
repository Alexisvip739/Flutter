import 'package:flutter/material.dart';

import 'card_image.dart';

class CardImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 380.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          cardImage("assets/img/playa.jpg"),
          cardImage("assets/img/Playa2.jpg"),
          cardImage("assets/img/img.jpg"),
        ],
      ),
    );
  }
}
