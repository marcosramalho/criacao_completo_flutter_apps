
import 'package:flutter/material.dart';

class Magnata extends StatefulWidget {
  @override
  _MagnataState createState() => _MagnataState();
}

class _MagnataState extends State<Magnata> {
  
  int _contadorGrana = 0;

  void _mandaGrana() {
    setState(() {
      _contadorGrana = _contadorGrana + 1000;  
    });
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Magnata"),
        backgroundColor: Colors.lightGreen,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            // Titulo
            Center(
              child: Text(
                "Fique Rico",
                style: TextStyle(
                  color: Colors.grey, 
                  fontWeight: FontWeight.w400, 
                  fontSize: 29.9
                ),
              ),
            ),

            Expanded(
              child: Center(
                child: Text(
                  "\$ $_contadorGrana",
                  style: TextStyle(
                    fontSize: 45.6, 
                    color: (_contadorGrana >= 10000 ? Colors.green : Colors.blue),
                    fontWeight: FontWeight.w700
                  ),
                ),
              ),
            ),

            Expanded(
              child: Center(
                child: FlatButton(
                  color: Colors.lightGreen,
                  textColor: Colors.white70,
                  onPressed: () => _mandaGrana(),
                  child: Text("Mais Grana!!", style: TextStyle(fontSize: 19.9),),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}