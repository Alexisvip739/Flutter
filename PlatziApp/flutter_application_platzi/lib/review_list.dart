import 'package:flutter/material.dart';
import 'package:flutter_application_platzi/review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        review("assets/img/descarga.jfif", "Daniela Rojas", "2 review",
            "Lugar muy hermoso"),
        review("assets/img/amigos-selfie.jpeg", "Omar Daniel Ortiz", "1 review",
            "Lo mejor que he conosido!!"),
        review("assets/img/photo.jpg", "Daniela Rodriguez", "6 review",
            "Un buen lugar para relajarse"),
      ],
    );
  }
}
