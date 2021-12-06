import 'package:flutter/material.dart';
import 'package:flutter_application_api/ButonAdd.dart';

import 'package:flutter_application_api/ListaContactos.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        home: Scaffold(
            appBar: AppBar(
              title: Text('My App'),
              centerTitle: true,
            ),
            body: Stack(
              children: [ListaContactos(), ButtonAdd()],
            )));
  }
}
