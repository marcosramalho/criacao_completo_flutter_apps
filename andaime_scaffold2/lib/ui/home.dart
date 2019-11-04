import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  void botaoFlutuante() => debugPrint("Botao flutuante");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scaffold - Andaime"),
        backgroundColor: Colors.orangeAccent,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.accessible),
            onPressed: () => debugPrint("Ola"),
          ),
          IconButton(
            icon: Icon(Icons.print),
            onPressed: () => debugPrint("Ola 2"),
          ),
          IconButton(
            icon: Icon(Icons.access_alarm),
            onPressed: () => debugPrint("Ola 3"),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Bonni",
              style: TextStyle(
                fontSize: 19.5,
                fontWeight: FontWeight.w700,
                color: Colors.deepOrange
              ),
            ),

            // Inkwell
            Padding(
              padding: EdgeInsets.all(15.0),
              child: InkWell(
                child: Text(
                  "Clique", 
                  style: TextStyle(fontSize: 16.0),
                ),
                //onTap: () => debugPrint("on Tap"),
                onDoubleTap: () => debugPrint("on Tap Double"),
                onLongPress: () => debugPrint("on long press"),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.access_alarm),
            title: Text("Perfil")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.print),
            title: Text("Imprimir")
          )
        ],  
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: botaoFlutuante,
        child: Icon(Icons.add),
        backgroundColor: Colors.red,
      ),
    );
  }
}