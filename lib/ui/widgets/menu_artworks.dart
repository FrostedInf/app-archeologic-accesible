import 'package:flutter/material.dart';
import 'menu_buttons_artworks.dart';

class MenuArtworks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(
        top: 60.0,
      ),
      child: Column(
        children: [
          MenuButtonsArtworks(
            menuName: "Museo",
            buttonSize: 50.0,
            iconos: Icons.account_balance,
            identi: 2,
            topContainer: 20.0,
          )
        ],
      ),
    );
  }
}
