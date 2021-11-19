import 'package:flutter/material.dart';
import 'package:munal_deafs_app/ui/widgets/appbar_general.dart';
import 'package:munal_deafs_app/ui/widgets/menu_artworks.dart';

class ArtworkTypes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final imageMap = Container(
      margin: EdgeInsets.only(top: 100.0, left: 50.0, bottom: 20.0),
      width: 300.0,
      height: 500.0,
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("assets/img/tulumcroquis.png"),
          )),
    );
    return Stack(
      children: [
        AppBarGeneral("Tulum"),
        Column(
          children: [imageMap],
        )
      ],
    );
  }
}
