import 'package:flutter/material.dart';
import 'package:flutter_application_api/AgregarPersona.dart';

class ButtonAdd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Agregar()));
        },
        child: Text(
          "Agregar Contacto",
          style: TextStyle(fontFamily: 'Lato', fontWeight: FontWeight.w900),
        ),
      ),
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(30.0)),
      height: 50.0,
      width: 140.0,
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: 660.0, left: 260.0),
    );
  }
}
