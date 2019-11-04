import 'package:flutter/material.dart';

class BemVindo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.redAccent,
      child: Center(
        child: Text(
          "Alo, mengaaaaooo", 
          textDirection: TextDirection.ltr,
          style: TextStyle(fontSize: 34.0, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}