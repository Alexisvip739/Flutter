import 'package:flutter/material.dart';
import 'package:flutter_application_platzi/Profile/ButtonGradient.dart';

class ProfileGradient extends StatelessWidget {
  final String pathImage = "assets/img/Playa2.jpg";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final String name = "Pathum Tzoo";
    final String Email = "pathumtzoo1@gmail.com";
    final PhotoEmail = Container(
      child: Text(
        Email,
        style: TextStyle(
          color: Colors.white,
          fontSize: 15.0,
          fontWeight: FontWeight.w100,
        ),
      ),
      margin: EdgeInsets.only(top: 220.0, left: 120.0),
    );
    final PhotoName = Container(
      child: Text(
        name,
        style: TextStyle(
          color: Colors.black,
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      margin: EdgeInsets.only(top: 190.0, left: 120.0),
    );

    final Profile_Photo = Container(
      margin: EdgeInsets.only(top: 170.0, right: 300.0),
      height: 80.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage))),
    );
    return Stack(
      children: <Widget>[
        Profile_Photo,
        PhotoName,
        PhotoEmail,
        ButtonGradient()
      ],
    );
  }
}
