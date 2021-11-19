import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:munal_deafs_app/models/concept.dart';
import 'package:munal_deafs_app/ui/widgets/card_glossary.dart';

class ListViewGlossary extends StatefulWidget {
  final List<Concept> concepts;
  const ListViewGlossary({Key? key, required this.concepts}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ListViewGlosary();
  }
}

class _ListViewGlosary extends State<ListViewGlossary> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        margin: EdgeInsets.only(top: 5.0),
        child: CupertinoScrollbar(
          child: ListView.builder(
              padding: EdgeInsets.all(20.0),
              scrollDirection: Axis.vertical,
              itemCount: widget.concepts.length,
              itemBuilder: (BuildContext context, int index) {
                return CardGlosary(widget.concepts[index]);
              }),
          isAlwaysShown: true,
          thickness: 6.0,
        ));
  }
}
