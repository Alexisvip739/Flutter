import 'package:flutter/material.dart';

class MostrarPersona extends StatelessWidget {
  String Name = " ";
  String LastNameUser = " ";
  String PhoneUser = "";
  String AvatarUser = "";

  MostrarPersona(String name, String lastname, String phone, String substring);

  @override
  Widget build(BuildContext context) {
    final NameUser = Container(
      margin: EdgeInsets.only(top: 100.0),
      child: Text("Nombre: " + Name),
    );
    final LastName = Container(
      margin: EdgeInsets.only(top: 100.0, left: 40.0),
      child: Text("Apellido: " + LastNameUser),
    );
    final Phone = Container(
      margin: EdgeInsets.only(top: 100.0),
      child: Text("Numero de celular: " + PhoneUser),
    );
    final Avatar = Container(
      child: CircleAvatar(child: Text(AvatarUser), maxRadius: 40.0),
      margin: EdgeInsets.only(top: 100),
      alignment: Alignment.center,
    );
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [Avatar, NameUser, LastName, Phone],
      ),
    );
  }
}
