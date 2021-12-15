import 'package:flutter/material.dart';
import 'package:munal_deafs_app/ui/screens/general_list_screen.dart';

class MapIconBtn extends StatefulWidget {
  final int identi;
  const MapIconBtn({
    Key? key,
    required this.identi,
  }) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _MapIconBtn();
  }
}

class _MapIconBtn extends State<MapIconBtn> {
  void onPressButton() {
    if (widget.identi == 2) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => GeneralListScreen()));
    }
  }

  @override
  Widget build(BuildContext context) {
    final id = widget.identi;
    final indicatormap = TextButton.icon(
      onPressed: onPressButton,
      label: Text(
        "",
        style: TextStyle(color: Colors.grey),
      ),
      icon: Icon(
        Icons.place_rounded,
        color: Colors.white,
        size: 30.0,
      ),
    );

    return Semantics(
      child: indicatormap,
      excludeSemantics: true,
      label: "boton ubicacion $id",
    );
  }
}
