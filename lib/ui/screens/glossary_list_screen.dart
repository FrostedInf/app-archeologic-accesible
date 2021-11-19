import 'package:flutter/material.dart';
import 'package:munal_deafs_app/models/concept.dart';
import 'package:munal_deafs_app/ui/widgets/appbar_general.dart';
import 'package:munal_deafs_app/ui/widgets/listview_glossary.dart';
import 'package:munal_deafs_app/ui/widgets/widget_search.dart';

class GlossaryListScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _GlossaryListScreen();
  }
}

class _GlossaryListScreen extends State<GlossaryListScreen> {
  late List<Concept> concepts;
  String query = '';

  @override
  void initState() {
    super.initState();
    concepts = Concept.getConcepts();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: [
        Column(
          children: [
            buildSearch(),
            Expanded(child: ListViewGlossary(concepts: concepts))
          ],
        ),
        AppBarGeneral("Glosario")
      ],
    );
  }

  Widget buildSearch() => SearchWidget(
      text: query,
      onChanged: searchConcept,
      hintText: 'Nombre de obra o del artista');

  void searchConcept(String query) {
    final concepts = Concept.getConcepts().where((concept) {
      final nameLower = concept.name.toLowerCase();
      final searchLower = query.toLowerCase();
      return nameLower.contains(searchLower);
    }).toList();

    setState(() {
      this.query = query;
      this.concepts = concepts;
    });
  }
}
