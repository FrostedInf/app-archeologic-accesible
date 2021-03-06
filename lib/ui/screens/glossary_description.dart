import 'package:flutter/material.dart';
import 'package:munal_deafs_app/ui/widgets/appbar_backarrow.dart';
import 'package:munal_deafs_app/ui/widgets/videoplayer_screen.dart';

class GlosaryDescription extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _GlosaryDescription();
  }
}

class _GlosaryDescription extends State<GlosaryDescription> {
  @override
  Widget build(BuildContext context) {
    final String decription =
        """Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent dignissim consequat nisl in euismod. Sed mi est, luctus a posuere eget, gravida in massa. Maecenas id mauris bibendum, feugiat magna ac, rhoncus velit. Aliquam placerat orci vel arcu gravida dapibus. Maecenas imperdiet, nunc nec tempor aliquet, elit nunc tincidunt ipsum, non venenatis neque justo non augue. Fusce vitae gravida purus. Donec eu ipsum quis tortor elementum feugiat.""";

    final imageConcept = Container(
      margin: EdgeInsets.only(top: 100.0, left: 10.0, bottom: 20.0),
      width: 300.0,
      height: 200.0,
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("assets/img/principalEdificioTulum.jpg"))),
    );

    final descConcept = Container(
      margin: EdgeInsets.all(10.0),
      child: Text(
        decription,
        textAlign: TextAlign.justify,
        style: TextStyle(fontSize: 12.0),
      ),
    );

    return Scaffold(
      body: Stack(
        children: [
          Center(
              child: ListView(
            padding: EdgeInsets.all(20.0),
            scrollDirection: Axis.vertical,
            children: [
              Semantics(
                child: imageConcept,
                image: true,
                label: 'imagen de concepto',
              ),
              Semantics(
                child: AspectRatio(
                  aspectRatio: 2 / 2,
                  child: VideoPlayerScreen(),
                ),
                label: "video en lengua de se??as mexicana",
              ),
              Semantics(
                child: descConcept,
                readOnly: true,
              ),
            ],
          )),
          AppBarBackArrow("Descripci??n"),
        ],
      ),
    );
  }
}
