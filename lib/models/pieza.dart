class Pieza {
  late String name;
  late String pathImage;

  Pieza(this.name, this.pathImage);

  static List<Pieza> getPiezas() {
    return [
      Pieza(
        'Edificio principal de tulum',
        'assets/img/principalEdificioTulum.jpg',
      ),
    ];
  }
}
