import 'package:flutter/material.dart';
import 'package:munal_deafs_app/models/architecture.dart';
import 'package:munal_deafs_app/ui/widgets/appbar_backarrow.dart';
import 'package:munal_deafs_app/ui/widgets/listview_architec.dart';
import 'package:munal_deafs_app/ui/widgets/widget_search.dart';

class ArchitecListScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ArchitecListScreen();
  }
}

class _ArchitecListScreen extends State<ArchitecListScreen> {
  late List<Architecture> architects;
  String query = '';

  @override
  void initState() {
    super.initState();
    architects = Architecture.getArchitectures();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: [
        Column(
          children: [
            buildSearch(),
            Expanded(child: ListViewArchitec(architects: architects))
          ],
        ),
        AppBarBackArrow("Museo")
      ],
    );
  }

  Widget buildSearch() => SearchWidget(
      text: query,
      onChanged: searchConcept,
      hintText: 'Nombre de obra o del artista');

  void searchConcept(String query) {
    final architects = Architecture.getArchitectures().where((concept) {
      final nameLower = concept.name.toLowerCase();
      final searchLower = query.toLowerCase();
      return nameLower.contains(searchLower);
    }).toList();

    setState(() {
      this.query = query;
      this.architects = architects;
    });
  }
}
