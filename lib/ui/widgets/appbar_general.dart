import 'package:flutter/material.dart';

class AppBarGeneral extends StatelessWidget {
  String title = "Inicio";

  AppBarGeneral(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.blueAccent, Colors.deepPurpleAccent],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft)),
      child: Text(
        this.title,
        style: TextStyle(color: Colors.white, fontSize: 22.0, fontWeight: FontWeight.bold),
      ),
      alignment: Alignment(-0.9, 0.3),
    );
  }
}
