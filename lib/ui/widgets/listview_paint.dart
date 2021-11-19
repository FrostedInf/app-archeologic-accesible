import 'package:flutter/material.dart';
import 'package:munal_deafs_app/models/paint.dart';
import 'package:flutter/cupertino.dart';
import 'package:munal_deafs_app/ui/widgets/card_paint.dart';

class ListViewPaint extends StatefulWidget {
  final List<Paint> paints;
  const ListViewPaint({Key? key, required this.paints}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ListViewPaint();
  }
}

class _ListViewPaint extends State<ListViewPaint> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        margin: EdgeInsets.only(top: 5.0),
        child: CupertinoScrollbar(
          child: ListView.builder(
              padding: EdgeInsets.all(20.0),
              scrollDirection: Axis.vertical,
              itemCount: widget.paints.length,
              itemBuilder: (BuildContext context, int index) {
                return CardPaint(widget.paints[index]);
              }),
          isAlwaysShown: true,
          thickness: 6.0,
        ));
  }
}
