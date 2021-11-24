import 'package:flutter/material.dart';

class AppBarBackArrow extends StatelessWidget {
  String title = "Inicio";

  AppBarBackArrow(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
      ),
      child: Row(
        children: [
          TextButton.icon(
            onPressed: () {
              Navigator.pop(context);
            },
            label: Text(
              "",
              style: TextStyle(color: Colors.white),
            ),
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          Text(
            this.title,
            style: TextStyle(
                color: Colors.white,
                fontSize: 25.0,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
      alignment: Alignment(-0.9, 0.3),
    );
  }
}
