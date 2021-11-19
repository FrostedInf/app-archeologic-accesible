import 'package:flutter/material.dart';
import 'package:munal_deafs_app/ui/screens/architec_list_screen.dart';
import 'package:munal_deafs_app/ui/screens/paint_list_screen.dart';
import 'package:munal_deafs_app/ui/screens/sculp_list_screen.dart';

class MenuButtonsArtworks extends StatefulWidget {
  final String menuName;
  final double buttonSize;
  final double topContainer;
  final IconData iconos;
  final int identi;
  const MenuButtonsArtworks(
      {Key? key,
      required this.menuName,
      required this.buttonSize,
      required this.iconos,
      required this.identi,
      required this.topContainer})
      : super(key: key);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState

    return _MenuButtonsArtworks();
  }
}

class _MenuButtonsArtworks extends State<MenuButtonsArtworks> {
  void onPressButton() {
    if (widget.identi == 0) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => PaintListScreen()));
      print('Hola mundo');
    }

    if (widget.identi == 1) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => SculpListScreen()));
    }

    if (widget.identi == 2) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => ArchitecListScreen()));
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final itemMenu = Container(
      margin: new EdgeInsets.only(
          top: widget.topContainer, left: 20.0, right: 20.0),
      width: 230.0,
      child: new TextButton.icon(
        onPressed: onPressButton,
        label: Text(widget.menuName),
        icon: Icon(widget.iconos),
        style: TextButton.styleFrom(
            backgroundColor: Colors.blue,
            primary: Colors.white,
            padding: EdgeInsets.all(widget.buttonSize),
            textStyle: const TextStyle(fontSize: 20.0)),
      ),
    );

    return itemMenu;
  }
}