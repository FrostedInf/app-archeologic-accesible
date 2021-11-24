import 'package:flutter/material.dart';
import 'package:munal_deafs_app/models/pieza.dart';
import 'package:flutter/cupertino.dart';
import 'package:munal_deafs_app/ui/widgets/card_pieza.dart';

class ListViewPieza extends StatefulWidget {
  final List<Pieza> piezas;
  const ListViewPieza({Key? key, required this.piezas}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ListViewPieza();
  }
}

class _ListViewPieza extends State<ListViewPieza> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        margin: EdgeInsets.only(top: 5.0),
        child: CupertinoScrollbar(
          child: ListView.builder(
              padding: EdgeInsets.all(20.0),
              scrollDirection: Axis.vertical,
              itemCount: widget.piezas.length,
              itemBuilder: (BuildContext context, int index) {
                return CardArchitecture(widget.piezas[index]);
              }),
          isAlwaysShown: true,
          thickness: 6.0,
        ));
  }
}
