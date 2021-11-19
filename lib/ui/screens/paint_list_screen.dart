import 'package:flutter/material.dart';
import 'package:munal_deafs_app/models/paint.dart';
import 'package:munal_deafs_app/ui/widgets/appbar_backarrow.dart';
import 'package:munal_deafs_app/ui/widgets/listview_paint.dart';
import 'package:munal_deafs_app/ui/widgets/widget_search.dart';

class PaintListScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _PaintListScreen();
  }
}

class _PaintListScreen extends State<PaintListScreen> {
  late List<Paint> paints;
  String query = '';

  @override
  void initState() {
    super.initState();
    paints = Paint.getPaints();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: [
        Column(
          children: [
            buildSearch(),
            Expanded(child: ListViewPaint(paints: paints))
          ],
        ),
        AppBarBackArrow("Pinturas")
      ],
    );
  }

  Widget buildSearch() => SearchWidget(
      text: query,
      onChanged: searchConcept,
      hintText: 'Nombre de obra o del artista');

  void searchConcept(String query) {
    final paints = Paint.getPaints().where((concept) {
      final nameLower = concept.name.toLowerCase();
      final searchLower = query.toLowerCase();
      return nameLower.contains(searchLower);
    }).toList();

    setState(() {
      this.query = query;
      this.paints = paints;
    });
  }
}
