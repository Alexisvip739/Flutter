import 'package:flutter/material.dart';

class Agregar extends StatelessWidget {
  TextEditingController controladorNombre = TextEditingController();
  TextEditingController controladorLatName = new TextEditingController();
  TextEditingController controladorPhone = new TextEditingController();

  Widget BotonAgregar(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: () {},
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

  Widget CajaDeTextoName(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20.0, left: 30.0, right: 30.0),
      child: TextField(
        controller: controladorNombre,
        decoration:
            InputDecoration(border: InputBorder.none, hintText: "Nombre"),
      ),
    );
  }

  Widget CajaDeTextoLastName(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 120.0, left: 30.0, right: 30.0),
      child: TextField(
        controller: controladorLatName,
        decoration:
            InputDecoration(border: InputBorder.none, hintText: "Apellido"),
      ),
    );
  }

  Widget CajaDeTextoPhone(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 220.0, left: 30.0, right: 30.0),
      child: TextField(
        controller: controladorPhone,
        decoration:
            InputDecoration(border: InputBorder.none, hintText: "Celular"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("Agregar Contacto"),
        ),
        body: Stack(
          children: [
            CajaDeTextoName(context),
            CajaDeTextoLastName(context),
            CajaDeTextoPhone(context),
            BotonAgregar(context)
          ],
        ));
  }
}
