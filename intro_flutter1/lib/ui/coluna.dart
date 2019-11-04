
import 'package:flutter/material.dart';

class Coluna extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Stack(
        //mainAxisAlignment: MainAxisAlignment.spaceAround,
        alignment: Alignment.center,
        children: <Widget>[
          Text(
            "Primeiro", 
            textDirection: TextDirection.ltr, 
            style: TextStyle(fontStyle: FontStyle.italic, fontSize: 15.0),
          ),

          //Expanded(child: Text("Ola"),),
          //Flexible(child: Text("Outro"),),
          //Flexible(child: Text("Outro"),),

          Padding(
            padding: EdgeInsets.all(20.0),
            child: FlatButton(
              color: Colors.red,
              child: Text("Botao2"),
              onPressed: () => print("botao2"),
            ),
          ),

          Text(
            "Segundo", 
            textDirection: TextDirection.ltr, 
            style: TextStyle(fontStyle: FontStyle.italic, fontSize: 15.0),
          ),
          FlatButton(
            color: Colors.white70,
            child: Text("Botao1"),
            onPressed: () => print("Hello"),)
        ],
      ),
    );
  }
}

