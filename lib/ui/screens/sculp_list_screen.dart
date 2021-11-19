import 'package:flutter/material.dart';
import 'package:munal_deafs_app/models/sculpture.dart';
import 'package:munal_deafs_app/ui/widgets/appbar_backarrow.dart';
import 'package:munal_deafs_app/ui/widgets/listview_sculp.dart';
import 'package:munal_deafs_app/ui/widgets/widget_search.dart';

class SculpListScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SculpListScreen();
  }
}

class _SculpListScreen extends State<SculpListScreen> {
  late List<Sculpture> sculpts;
  String query = '';

  @override
  void initState() {
    super.initState();
    sculpts = Sculpture.getSculps();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: [
        Column(
          children: [
            buildSearch(),
            Expanded(child: ListViewSculp(sculpts: sculpts))
          ],
        ),
        AppBarBackArrow("Esculturas")
      ],
    );
  }

  Widget buildSearch() => SearchWidget(
      text: query,
      onChanged: searchConcept,
      hintText: 'Nombre de obra o del artista');

  void searchConcept(String query) {
    final sculpts = Sculpture.getSculps().where((concept) {
      final nameLower = concept.name.toLowerCase();
      final searchLower = query.toLowerCase();
      return nameLower.contains(searchLower);
    }).toList();

    setState(() {
      this.query = query;
      this.sculpts = sculpts;
    });
  }
}
