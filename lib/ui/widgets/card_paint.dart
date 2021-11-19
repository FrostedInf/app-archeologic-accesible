import 'package:flutter/material.dart';
import 'package:munal_deafs_app/models/paint.dart';
import 'package:munal_deafs_app/ui/screens/paint_desc_screen.dart';

class CardPaint extends StatelessWidget {
  late Paint paint;

  CardPaint(this.paint);

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
              fit: BoxFit.fill, image: AssetImage(paint.pathImage))),
    );

    final titleConcept = Container(
      margin: EdgeInsets.all(10.0),
      width: 150.0,
      height: 50.0,
      child: Text(
        paint.name,
        textAlign: TextAlign.left,
        style: TextStyle(fontSize: 14.0),
      ),
    );

    return InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => PaintDescScreen()));
          print('Hola mundo');
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
