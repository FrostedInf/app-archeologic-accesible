import 'package:flutter/material.dart';
import 'package:munal_deafs_app/ui/screens/general_list_screen.dart';
import 'package:munal_deafs_app/ui/screens/maps_screen.dart';
import 'package:munal_deafs_app/ui/widgets/appbar_general.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeScreen();
  }
}

class _HomeScreen extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final map_btn = Container(
      width: 300.0,
      margin: new EdgeInsets.only(top: 20, left: 50.0, right: 20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black),
      ),
      child: new TextButton.icon(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MapsScreen()));
        },
        label: Text(
          "Mapa",
          style: TextStyle(color: Colors.black),
        ),
        icon: Icon(
          Icons.map_rounded,
          color: Theme.of(context).primaryColor,
          size: 100.0,
        ),
      ),
    );

    final qr_btn = Container(
      width: 300.0,
      margin: new EdgeInsets.only(top: 20, left: 50.0, right: 20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black),
      ),
      child: new TextButton.icon(
        onPressed: () {},
        label: Text(
          "QR",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        icon: Icon(
          Icons.qr_code,
          color: Theme.of(context).primaryColor,
          size: 100.0,
        ),
      ),
    );

    return Stack(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Semantics(
              child: map_btn,
              label: "Boton de mapa del museo",
              enabled: true,
            ),
            qr_btn,
          ],
        ),
        AppBarGeneral("Tulum"),
      ],
    );
  }
}
