import 'package:flutter/material.dart';

class DetectorEventos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Detector"),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Center(
        child: MeuBotao(),
      ),
    );
  }
}

class MeuBotao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector( // detector de eventos/gestos
      onTap: () {
        final snackBar = SnackBar(content: Text("Ola Gestos/Eventos"));        
        Scaffold.of(context).showSnackBar(snackBar);
        
      },

      // criar o button
      child: Container(
        padding: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: Theme.of(context).accentColor,
          borderRadius: BorderRadius.circular(5.5)
        ),
        child: Text("O meu botao"),
      ),
    );
  }
}