import 'package:flutter/material.dart';
import 'package:munal_deafs_app/models/concept.dart';
import 'package:munal_deafs_app/ui/screens/glossary_description.dart';

class CardGlosary extends StatelessWidget {
  late Concept concept;

  CardGlosary(this.concept);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final imageConcept = Container(
      margin: EdgeInsets.only(top: 5.0, left: 10.0),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          image: DecorationImage(
              fit: BoxFit.fill, image: AssetImage(concept.pathImage))),
    );

    final titleConcept = Container(
      width: 150.0,
      height: 50.0,
      margin: EdgeInsets.all(10.0),
      child: Text(
        concept.name,
        textAlign: TextAlign.left,
        style: TextStyle(fontSize: 14.0),
      ),
    );

    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => GlosaryDescription()));
      },
      child: Container(
        padding: new EdgeInsets.all(5.0),
        height: 120.0,
        child: Card(
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          child: Row(
            children: [titleConcept, imageConcept],
          ),
        ),
      )
    );
  }
}
