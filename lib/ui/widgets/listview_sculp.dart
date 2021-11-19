import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:munal_deafs_app/models/sculpture.dart';
import 'package:munal_deafs_app/ui/widgets/card_sculp.dart';

class ListViewSculp extends StatefulWidget {
  final List<Sculpture> sculpts;
  const ListViewSculp({Key? key, required this.sculpts}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ListViewSculp();
  }
}

class _ListViewSculp extends State<ListViewSculp> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        margin: EdgeInsets.only(top: 5.0),
        child: CupertinoScrollbar(
          child: ListView.builder(
              padding: EdgeInsets.all(20.0),
              scrollDirection: Axis.vertical,
              itemCount: widget.sculpts.length,
              itemBuilder: (BuildContext context, int index) {
                return CardSculp(widget.sculpts[index]);
              }),
          isAlwaysShown: true,
          thickness: 6.0,
        ));
  }
}
