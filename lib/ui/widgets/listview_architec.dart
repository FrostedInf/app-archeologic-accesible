import 'package:flutter/material.dart';
import 'package:munal_deafs_app/models/architecture.dart';
import 'package:flutter/cupertino.dart';
import 'package:munal_deafs_app/ui/widgets/card_architecture.dart';

class ListViewArchitec extends StatefulWidget {
  final List<Architecture> architects;
  const ListViewArchitec({Key? key, required this.architects})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ListViewArchitec();
  }
}

class _ListViewArchitec extends State<ListViewArchitec> {
  List<Architecture> architecs = Architecture.getArchitectures();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        margin: EdgeInsets.only(top: 5.0),
        child: CupertinoScrollbar(
          child: ListView.builder(
              padding: EdgeInsets.all(20.0),
              scrollDirection: Axis.vertical,
              itemCount: widget.architects.length,
              itemBuilder: (BuildContext context, int index) {
                return CardArchitecture(widget.architects[index]);
              }),
          isAlwaysShown: true,
          thickness: 6.0,
        ));
  }
}
