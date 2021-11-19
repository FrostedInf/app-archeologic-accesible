import 'package:flutter/material.dart';
import 'package:munal_deafs_app/ui/widgets/appbar_general.dart';
import 'package:munal_deafs_app/ui/widgets/menu_artworks.dart';



class ArtworkTypes extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: [
        AppBarGeneral("Tipos de obra"),
        Center(
          child: MenuArtworks(),
        ),
      ],
    );

  }

}