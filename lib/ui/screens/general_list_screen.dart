import 'package:flutter/material.dart';
import 'package:munal_deafs_app/models/pieza.dart';
import 'package:munal_deafs_app/ui/widgets/appbar_backarrow.dart';
import 'package:munal_deafs_app/ui/widgets/listview_Pieza.dart';
import 'package:munal_deafs_app/ui/widgets/widget_search.dart';

class GeneralListScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _GeneralListScreen();
  }
}

class _GeneralListScreen extends State<GeneralListScreen> {
  late List<Pieza> piezas;
  String query = '';

  @override
  void initState() {
    super.initState();
    piezas = Pieza.getPiezas();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: [
        Column(
          children: [
            buildSearch(),
            Expanded(child: ListViewPieza(piezas: piezas))
          ],
        ),
        AppBarBackArrow("Exposición")
      ],
    );
  }

  Widget buildSearch() => SearchWidget(
      text: query,
      onChanged: searchConcept,
      hintText: 'Nombre de la pieza a buscar');

  void searchConcept(String query) {
    final piezas = Pieza.getPiezas().where((concept) {
      final nameLower = concept.name.toLowerCase();
      final searchLower = query.toLowerCase();
      return nameLower.contains(searchLower);
    }).toList();

    setState(() {
      this.query = query;
      this.piezas = piezas;
    });
  }
}
