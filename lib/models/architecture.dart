class Architecture {
  late String name;
  late String pathImage;

  Architecture(this.name, this.pathImage);

  static List<Architecture> getArchitectures() {
    return [
      Architecture('Edificio principal de tulum',
          'assets/img/principalEdificiotulum.jpg'),
    ];
  }
}
