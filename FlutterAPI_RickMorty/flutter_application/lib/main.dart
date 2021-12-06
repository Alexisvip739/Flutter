import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application/models/RickMorti.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Future<List<RickMorti>> _listadoRickMorti;
  Future<List<RickMorti>> _getAPI() async {
    final response = await http
        .get(Uri.parse("https://rickandmortyapi.com/api/character/?page=19"));
    List<RickMorti> gifs = [];
    if (response.statusCode == 200) {
      String body = utf8.decode(response.bodyBytes); // hace que el codigo que esta pasado en json codifique todo bien como las ñ, o acentos
      final jsonData = jsonDecode(body);
      for (var item in jsonData["results"]) {
        gifs.add(RickMorti(item["name"], item["image"]));
      }
      return gifs;
    } else {
      return throw Exception("Fallo la conexion");
    }
    throw Exception("No se encontro fallos");
  }

  @override
  void initState() {
    super.initState();
    _listadoRickMorti = _getAPI();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Serie Ricky y Morty',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Serie Ricky y Morty'),
          ),
          body: FutureBuilder(
            future: _listadoRickMorti,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                print(snapshot.hasData);
                return GridView.count(
                  crossAxisCount: 2,
                  children: _listApi(snapshot.data),
                );
              } else if (snapshot.hasError) {
                return Text("Error");
              }
              return Center(child: CircularProgressIndicator());
            },
          ),
        ));
  }

  List<Widget> _listApi(data) {
    List<Widget> gifs = [];
    for (var gif in data) {
      gifs.add(Card(
        child: Column(
          children: [
            Expanded(
              child: Image.network(
                gif.Url,
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(gif.Name),
            )
          ],
        ),
      ));
    }
    return gifs;
  }
}
