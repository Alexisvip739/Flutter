import 'package:flutter/material.dart';

class ButtonGradient extends StatefulWidget {
  ButtonGradient({Key? key}) : super(key: key);

  @override
  _ButtonGradientState createState() => _ButtonGradientState();
}

class _ButtonGradientState extends State<ButtonGradient> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 300.0),
      child: Row(
        children: <Widget>[
          InkWell(
            
          ),
          FloatingActionButton(
            onPressed: null,
            backgroundColor: Colors.blue,
            tooltip: "Fav",
            
            child: Icon(Icons.work),
          ),
          FloatingActionButton(
            onPressed: null,
            backgroundColor: Colors.blue,
            tooltip: "Fav",
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: null,
            backgroundColor: Colors.blue,
            tooltip: "Fav",
            child: const Icon(Icons.email),
          ),
          FloatingActionButton(
            onPressed: null,
            backgroundColor: Colors.blue,
            tooltip: "Fav",
            child: Icon(Icons.person),
          )
        ],
      ),
    );
  }
}
