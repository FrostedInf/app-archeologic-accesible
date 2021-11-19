
class Concept{
  late String name;
  late String pathImage;

  Concept(this.name, this.pathImage);

  static List<Concept> getConcepts(){
    return [Concept('Pintura', 'assets/img/exhibition1.jpeg'),
      Concept('Escultura', 'assets/img/exhibition1.jpeg'),
      Concept('Escultura', 'assets/img/exhibition1.jpeg'),
      Concept('Escultura', 'assets/img/exhibition1.jpeg'),
       Concept('Escultura', 'assets/img/exhibition1.jpeg')
    ];
  }
}