import 'package:flutter/material.dart';
import 'package:munal_deafs_app/ui/widgets/appbar_backarrow.dart';
import 'package:munal_deafs_app/ui/widgets/mapicon_btn.dart';

class MapsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageMap = Container(
      margin: EdgeInsets.only(top: 100.0, left: 5.0, bottom: 20.0),
      width: 350.0,
      height: 400.0,
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("assets/img/tulumcroquis.png"),
          )),
      child: Stack(
        children: [
          Positioned(
            top: 25,
            left: 30,
            child: MapIconBtn(
              identi: 2,
            ),
          ),
          Positioned(
            top: 100,
            left: 30,
            child: MapIconBtn(
              identi: 2,
            ),
          ),
        ],
      ),
    );
    return Stack(
      children: [
        Column(
          children: [
            InteractiveViewer(
              child: imageMap,
            )
          ],
        ),
        AppBarBackArrow("Mapa"),
      ],
    );
  }
}
