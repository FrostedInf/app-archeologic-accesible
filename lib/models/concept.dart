class Concept {
  late String name;
  late String pathImage;

  Concept(this.name, this.pathImage);

  static List<Concept> getConcepts() {
    return [
      Concept(
          'Principal edificio tulum', 'assets/img/principalEdificioTulum.jpg'),
    ];
  }
}
