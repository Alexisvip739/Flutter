import 'package:flutter/material.dart';

import 'MostrarPersona.dart';

class Persona {
  String name = "";
  String lastname = "";
  String phone = "";

  Persona(name, lastname, phone) {
    this.name = name;
    this.lastname = lastname;
    this.phone = phone;
  }
}

class ListaContactos extends StatefulWidget {
  ListaContactos({Key? key}) : super(key: key);

  @override
  _ListaContactosState createState() => _ListaContactosState();
}

class _ListaContactosState extends State<ListaContactos> {
  List<Persona> _persona = [
    Persona("Jose", "Galdaamez", "4949345423"),
    Persona("Martin", "Garcia", "4949364388"),
    Persona("Rodrigo", "Garcia", "4949354388"),
    Persona("Samuel", "Hernandez", "4955364388"),
    Persona("Jimeno", "Sotelo", "4949884388"),
    Persona("Carlos", "Ayala", "459364388"),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: _persona.length,
        itemBuilder: (context, index) {
          return ListTile(
            onLongPress: () {
              this._borrarPersona(context, _persona[index]);
            },
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MostrarPersona(
                        _persona[index].name,
                        _persona[index].lastname,
                        _persona[index].phone,
                        _persona[index].name.substring(0, 1))),
              );
            },
            title: Text(_persona[index].name + ' ' + _persona[index].lastname),
            subtitle: Text(_persona[index].phone),
            leading: CircleAvatar(
              child: Text(_persona[index].name.substring(0, 1)),
            ),
            trailing: Icon(Icons.arrow_forward_ios),
          );
        });
  }

  _borrarPersona(context, persona) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(15)),
              title: Text("Eliminar Contacto"),
              content: Text("Estas seguro de eliminar a: " + persona.name),
              actions: [
                FlatButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Cancelar")),
                FlatButton(
                    onPressed: () {
                      setState(() {
                        this._persona.remove(persona);
                      });

                      Navigator.pop(context);
                    },
                    child: Text("Borrar", style: TextStyle(color: Colors.red))),
              ],
            ));
  }
}
